-- Query 1
-- Investigation: Find every event that has a failed status.
-- Security importance: Failed events can show login problems or attempted attacks.
SELECT security_logs_raw.*
FROM security_logs_raw
         JOIN status
              ON security_logs_raw.status_id = status.status_id
WHERE status.status = 'failed'
ORDER BY security_logs_raw.event_time DESC;

-- Query 2
-- Investigation: Find every event with high or critical severity.
-- Security importance: These events may need attention before low-risk events.
SELECT security_logs_raw.*
FROM security_logs_raw
         JOIN severity
              ON security_logs_raw.severity_id = severity.severity_id
WHERE severity.severity = 'high'
   OR severity.severity = 'critical'
ORDER BY security_logs_raw.event_time DESC;

-- Query 3
-- Investigation: Find events connected to locked accounts.
-- Security importance: Activity from a locked account may show a control failure.
SELECT security_logs_raw.*
FROM security_logs_raw
         JOIN account_status
              ON security_logs_raw.account_status_id = account_status.account_status_id
WHERE account_status.account_status = 'locked'
ORDER BY security_logs_raw.event_time DESC;

-- Query 4
-- Investigation: Find every event already marked for the watchlist.
-- Security importance: Watchlisted activity has already met a suspicious condition.
SELECT *
FROM security_logs_raw
WHERE watchlist_flag = TRUE
ORDER BY event_time DESC;

-- Query 5
-- Investigation: List login events from newest to oldest.
-- Security importance: A timeline helps investigators see the order of login attempts.
SELECT security_logs_raw.*
FROM security_logs_raw
         JOIN event_type
              ON security_logs_raw.event_type_id = event_type.event_type_id
WHERE event_type.event_type = 'login'
ORDER BY security_logs_raw.event_time DESC;

-- Query 6
-- Investigation: Find the ten records with the highest risk scores.
-- Security importance: The highest-risk events should normally be reviewed first.
SELECT *
FROM security_logs_raw
ORDER BY risk_score DESC
    LIMIT 10;

-- Query 7
-- Investigation: Count how many records belong to each event type.
-- Security importance: Unusually common event types may reveal misuse or system problems.
SELECT event_type.event_type,
       COUNT(*) AS total_events
FROM security_logs_raw
         JOIN event_type
              ON security_logs_raw.event_type_id = event_type.event_type_id
GROUP BY event_type.event_type
ORDER BY total_events DESC;

-- ============================================================
-- MEDIUM QUERIES
-- ============================================================

-- Query 8
-- Investigation: Count failed events for each username.
-- Security importance: Users with repeated failures may be under attack or misusing access.
SELECT security_logs_raw.username,
       COUNT(*) AS failed_events
FROM security_logs_raw
         JOIN status
              ON security_logs_raw.status_id = status.status_id
WHERE status.status = 'failed'
GROUP BY security_logs_raw.username
ORDER BY failed_events DESC;

-- Query 9
-- Investigation: Count how many records came from each IP address.
-- Security importance: A very active IP address may be automated or shared by attackers.
SELECT ip_address,
       COUNT(*) AS total_events
FROM security_logs_raw
GROUP BY ip_address
ORDER BY total_events DESC;

-- Query 10
-- Investigation: Count high or critical events for each username.
-- Security importance: Repeated serious events tied to one user deserve closer review.
SELECT security_logs_raw.username,
       COUNT(*) AS serious_events
FROM security_logs_raw
         JOIN severity
              ON security_logs_raw.severity_id = severity.severity_id
WHERE severity.severity = 'high'
   OR severity.severity = 'critical'
GROUP BY security_logs_raw.username
ORDER BY serious_events DESC;

-- Query 11
-- Investigation: Count failed events for each device type.
-- Security importance: This can reveal whether failures are concentrated on one device type.
SELECT device_type.device_type,
       COUNT(*) AS failed_events
FROM security_logs_raw
         JOIN device_type
              ON security_logs_raw.device_type_id = device_type.device_type_id
         JOIN status
              ON security_logs_raw.status_id = status.status_id
WHERE status.status = 'failed'
GROUP BY device_type.device_type
ORDER BY failed_events DESC;

-- Query 12
-- Investigation: Count watchlisted events for each country.
-- Security importance: Location patterns can help identify suspicious access sources.
SELECT location_country,
       COUNT(*) AS suspicious_events
FROM security_logs_raw
WHERE watchlist_flag = TRUE
GROUP BY location_country
ORDER BY suspicious_events DESC;

-- Query 13
-- Investigation: Find the most common reasons that events failed or were blocked.
-- Security importance: Common failure reasons show which security controls are triggered most.
SELECT failure_reason.failure_reason,
       COUNT(*) AS reason_count
FROM security_logs_raw
         JOIN failure_reason
              ON security_logs_raw.failure_reason_id = failure_reason.failure_reason_id
GROUP BY failure_reason.failure_reason
ORDER BY reason_count DESC;

-- Query 14
-- Investigation: Count how many records belong to each resource type.
-- Security importance: This shows which parts of the system receive the most activity.
SELECT resource_type.resource_type,
       COUNT(*) AS total_events
FROM security_logs_raw
         JOIN resource_type
              ON security_logs_raw.resource_type_id = resource_type.resource_type_id
GROUP BY resource_type.resource_type
ORDER BY total_events DESC;

-- Query 15
-- Investigation: Count each user-role and event-category combination.
-- Security importance: Unexpected role activity may show access outside normal duties.
SELECT user_role.user_role,
       event_category.event_category,
       COUNT(*) AS total_events
FROM security_logs_raw
         JOIN user_role
              ON security_logs_raw.user_role_id = user_role.user_role_id
         JOIN event_category
              ON security_logs_raw.event_category_id = event_category.event_category_id
GROUP BY user_role.user_role, event_category.event_category
ORDER BY user_role.user_role, total_events DESC;

-- ============================================================
-- HARDER QUERIES
-- ============================================================

-- Query 16
-- Investigation: Find IP addresses used by more than one username.
-- Security importance: Shared IP addresses can connect accounts to the same source.
SELECT ip_address,
       COUNT(DISTINCT username) AS different_usernames
FROM security_logs_raw
GROUP BY ip_address
HAVING COUNT(DISTINCT username) > 1
ORDER BY different_usernames DESC;

-- Query 17
-- Investigation: Find usernames tied to both a failed event and a high risk score.
-- Security importance: Multiple warning signs together are stronger than either sign alone.
SELECT DISTINCT security_logs_raw.username
FROM security_logs_raw
         JOIN status
              ON security_logs_raw.status_id = status.status_id
WHERE status.status = 'failed'
  AND security_logs_raw.risk_score >= 75
ORDER BY security_logs_raw.username;

-- Query 18
-- Investigation: Find sessions that contain more than one failed event.
-- Security importance: Repeated failures in one session may show brute-force activity.
SELECT security_logs_raw.session_id,
       COUNT(*) AS failed_events
FROM security_logs_raw
         JOIN status
              ON security_logs_raw.status_id = status.status_id
WHERE status.status = 'failed'
GROUP BY security_logs_raw.session_id
HAVING COUNT(*) > 1
ORDER BY failed_events DESC;

-- Query 19
-- Investigation: Find successful activity from locked or suspended accounts.
-- Security importance: A disabled security control could allow restricted users back in.
SELECT security_logs_raw.username,
       account_status.account_status,
       security_logs_raw.event_time,
       security_logs_raw.ip_address,
       security_logs_raw.session_id
FROM security_logs_raw
         JOIN account_status
              ON security_logs_raw.account_status_id = account_status.account_status_id
         JOIN status
              ON security_logs_raw.status_id = status.status_id
WHERE (account_status.account_status = 'locked'
    OR account_status.account_status = 'suspended')
  AND status.status = 'success'
ORDER BY security_logs_raw.event_time DESC;

-- Query 20
-- Investigation: Find users, IP addresses, and sessions with several risk indicators together.
-- Security importance: Failed, severe, watchlisted, high-risk activity is a strong attack signal.
SELECT security_logs_raw.username,
       security_logs_raw.ip_address,
       security_logs_raw.session_id,
       COUNT(*) AS matching_events
FROM security_logs_raw
         JOIN status
              ON security_logs_raw.status_id = status.status_id
         JOIN severity
              ON security_logs_raw.severity_id = severity.severity_id
WHERE status.status = 'failed'
  AND (severity.severity = 'high'
    OR severity.severity = 'critical')
  AND security_logs_raw.watchlist_flag = TRUE
  AND security_logs_raw.risk_score >= 75
GROUP BY security_logs_raw.username,
         security_logs_raw.ip_address,
         security_logs_raw.session_id
ORDER BY matching_events DESC;