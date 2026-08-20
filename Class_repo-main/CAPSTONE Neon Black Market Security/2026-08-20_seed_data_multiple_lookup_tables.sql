INSERT INTO user_role (user_role)
VALUES ('vendor'), ('buyer'), ('admin'), ('analyst'), ('moderator'), ('guest');

INSERT INTO account_status (account_status)
VALUES ('active'), ('locked'), ('suspended'), ('disabled'), ('pending');

INSERT INTO device_type (device_type)
VALUES ('desktop'), ('mobile'), ('tablet'), ('kiosk'), ('server');

INSERT INTO operating_system (operating_system)
VALUES ('Windows'), ('macOS'), ('Linux'), ('Android'), ('iOS');

INSERT INTO browser_name (browser_name)
VALUES ('Chrome'), ('Firefox'), ('Edge'), ('Safari'), ('Tor');

INSERT INTO event_type (event_type)
VALUES
    ('login'), ('logout'), ('password_change'), ('purchase'),
    ('file_access'), ('account_update'), ('admin_action');

INSERT INTO event_category (event_category)
VALUES
    ('authentication'), ('transaction'), ('system'),
    ('user_management'), ('security');

INSERT INTO action_taken (action_taken)
VALUES ('allow'), ('deny'), ('block'), ('flag'), ('alert');

INSERT INTO status (status)
VALUES ('success'), ('failed'), ('blocked'), ('pending');

INSERT INTO severity (severity)
VALUES ('low'), ('medium'), ('high'), ('critical');

INSERT INTO resource_type (resource_type)
VALUES
    ('user_account'), ('product_listing'), ('transaction_record'),
    ('admin_panel'), ('file_storage'), ('api_endpoint');

INSERT INTO failure_reason (failure_reason)
VALUES
    ('invalid_password'), ('invalid_username'), ('account_locked'),
    ('insufficient_permissions'), ('timeout'),
    ('suspicious_activity'), ('system_error');

-- 65 normal activity records
INSERT INTO security_logs_raw
(
    event_time, username, user_role_id, account_status_id, ip_address,
    port_number, device_type_id, operating_system_id, browser_name_id,
    location_city, location_region, location_country, event_type_id,
    event_category_id, action_taken_id, status_id, severity_id,
    resource_type_id, resource_name, session_id, failure_reason_id,
    risk_score, watchlist_flag, notes
)
VALUES
    ('2026-08-01 08:00:00-05', 'normal_user_001', 2, 1, '10.20.1.5', 443, 1, 1, 1, 'Austin', 'Texas', 'United States', 1, 1, 1, 1, 1, 1, 'buyer_account_001', 'SESSION-N-001', NULL, 12, FALSE, 'Normal successful buyer login'),
    ('2026-08-01 08:17:00-05', 'normal_user_002', 1, 1, '10.20.1.6', 443, 2, 4, 1, 'Buda', 'Texas', 'United States', 2, 1, 1, 1, 1, 1, 'vendor_account_002', 'SESSION-N-002', NULL, 19, FALSE, 'Normal vendor logout'),
    ('2026-08-01 08:34:00-05', 'normal_user_003', 2, 1, '10.20.1.7', 443, 3, 5, 4, 'Dallas', 'Texas', 'United States', 4, 2, 1, 1, 1, 3, 'purchase_record_003', 'SESSION-N-003', NULL, 26, FALSE, 'Normal completed purchase'),
    ('2026-08-01 08:51:00-05', 'normal_user_004', 4, 1, '10.20.1.8', 8443, 4, 3, 3, 'Houston', 'Texas', 'United States', 5, 3, 1, 1, 2, 5, 'analytics_report_004', 'SESSION-N-004', NULL, 33, FALSE, 'Normal analyst file access'),
    ('2026-08-01 09:08:00-05', 'normal_user_005', 1, 1, '10.20.1.9', 443, 5, 3, 2, 'San Antonio', 'Texas', 'United States', 6, 4, 1, 1, 2, 1, 'vendor_profile_005', 'SESSION-N-005', NULL, 40, FALSE, 'Normal vendor account update'),
    ('2026-08-01 09:25:00-05', 'normal_user_006', 3, 1, '10.20.1.10', 9443, 1, 1, 1, 'Fort Worth', 'Texas', 'United States', 7, 4, 1, 1, 1, 4, 'admin_dashboard_006', 'SESSION-N-006', NULL, 9, FALSE, 'Normal approved admin action'),
    ('2026-08-01 09:42:00-05', 'normal_user_007', 5, 1, '10.20.1.11', 443, 2, 4, 1, 'Killeen', 'Texas', 'United States', 3, 1, 1, 1, 1, 1, 'moderator_account_007', 'SESSION-N-007', NULL, 16, FALSE, 'Normal moderator password change'),
    ('2026-08-01 09:59:00-05', 'normal_user_008', 2, 1, '10.20.1.12', 443, 3, 5, 4, 'Round Rock', 'Texas', 'United States', 1, 1, 1, 1, 1, 1, 'buyer_account_008', 'SESSION-N-008', NULL, 23, FALSE, 'Normal successful buyer login'),
    ('2026-08-01 10:16:00-05', 'normal_user_009', 1, 1, '10.20.1.13', 443, 4, 3, 3, 'Austin', 'Texas', 'United States', 2, 1, 1, 1, 2, 1, 'vendor_account_009', 'SESSION-N-009', NULL, 30, FALSE, 'Normal vendor logout'),
    ('2026-08-01 10:33:00-05', 'normal_user_010', 2, 1, '10.20.1.14', 443, 5, 3, 2, 'Buda', 'Texas', 'United States', 4, 2, 1, 1, 2, 3, 'purchase_record_010', 'SESSION-N-010', NULL, 37, FALSE, 'Normal completed purchase'),
    ('2026-08-01 10:50:00-05', 'normal_user_011', 4, 1, '10.20.1.15', 8443, 1, 1, 1, 'Dallas', 'Texas', 'United States', 5, 3, 1, 1, 1, 5, 'analytics_report_011', 'SESSION-N-011', NULL, 6, FALSE, 'Normal analyst file access'),
    ('2026-08-01 11:07:00-05', 'normal_user_012', 1, 1, '10.20.1.16', 443, 2, 4, 1, 'Houston', 'Texas', 'United States', 6, 4, 1, 1, 1, 1, 'vendor_profile_012', 'SESSION-N-012', NULL, 13, FALSE, 'Normal vendor account update'),
    ('2026-08-01 11:24:00-05', 'normal_user_013', 3, 1, '10.20.1.17', 9443, 3, 5, 4, 'San Antonio', 'Texas', 'United States', 7, 4, 1, 1, 1, 4, 'admin_dashboard_013', 'SESSION-N-013', NULL, 20, FALSE, 'Normal approved admin action'),
    ('2026-08-01 11:41:00-05', 'normal_user_014', 5, 1, '10.20.1.18', 443, 4, 3, 3, 'Fort Worth', 'Texas', 'United States', 3, 1, 1, 1, 1, 1, 'moderator_account_014', 'SESSION-N-014', NULL, 27, FALSE, 'Normal moderator password change'),
    ('2026-08-01 11:58:00-05', 'normal_user_015', 2, 1, '10.20.1.19', 443, 5, 3, 2, 'Killeen', 'Texas', 'United States', 1, 1, 1, 1, 2, 1, 'buyer_account_015', 'SESSION-N-015', NULL, 34, FALSE, 'Normal successful buyer login'),
    ('2026-08-01 12:15:00-05', 'normal_user_016', 1, 1, '10.20.1.20', 443, 1, 1, 1, 'Round Rock', 'Texas', 'United States', 2, 1, 1, 1, 2, 1, 'vendor_account_016', 'SESSION-N-016', NULL, 41, FALSE, 'Normal vendor logout'),
    ('2026-08-01 12:32:00-05', 'normal_user_017', 2, 1, '10.20.1.21', 443, 2, 4, 1, 'Austin', 'Texas', 'United States', 4, 2, 1, 1, 1, 3, 'purchase_record_017', 'SESSION-N-017', NULL, 10, FALSE, 'Normal completed purchase'),
    ('2026-08-01 12:49:00-05', 'normal_user_018', 4, 1, '10.20.1.22', 8443, 3, 5, 4, 'Buda', 'Texas', 'United States', 5, 3, 1, 1, 1, 5, 'analytics_report_018', 'SESSION-N-018', NULL, 17, FALSE, 'Normal analyst file access'),
    ('2026-08-01 13:06:00-05', 'normal_user_019', 1, 1, '10.20.1.23', 443, 4, 3, 3, 'Dallas', 'Texas', 'United States', 6, 4, 1, 1, 1, 1, 'vendor_profile_019', 'SESSION-N-019', NULL, 24, FALSE, 'Normal vendor account update'),
    ('2026-08-01 13:23:00-05', 'normal_user_020', 3, 1, '10.20.1.24', 9443, 5, 3, 2, 'Houston', 'Texas', 'United States', 7, 4, 1, 1, 2, 4, 'admin_dashboard_020', 'SESSION-N-020', NULL, 31, FALSE, 'Normal approved admin action'),
    ('2026-08-01 13:40:00-05', 'normal_user_021', 5, 1, '10.20.1.25', 443, 1, 1, 1, 'San Antonio', 'Texas', 'United States', 3, 1, 1, 1, 2, 1, 'moderator_account_021', 'SESSION-N-021', NULL, 38, FALSE, 'Normal moderator password change'),
    ('2026-08-01 13:57:00-05', 'normal_user_022', 2, 1, '10.20.1.26', 443, 2, 4, 1, 'Fort Worth', 'Texas', 'United States', 1, 1, 1, 1, 1, 1, 'buyer_account_022', 'SESSION-N-022', NULL, 7, FALSE, 'Normal successful buyer login'),
    ('2026-08-01 14:14:00-05', 'normal_user_023', 1, 1, '10.20.1.27', 443, 3, 5, 4, 'Killeen', 'Texas', 'United States', 2, 1, 1, 1, 1, 1, 'vendor_account_023', 'SESSION-N-023', NULL, 14, FALSE, 'Normal vendor logout'),
    ('2026-08-01 14:31:00-05', 'normal_user_024', 2, 1, '10.20.1.28', 443, 4, 3, 3, 'Round Rock', 'Texas', 'United States', 4, 2, 1, 1, 1, 3, 'purchase_record_024', 'SESSION-N-024', NULL, 21, FALSE, 'Normal completed purchase'),
    ('2026-08-01 14:48:00-05', 'normal_user_025', 4, 1, '10.20.1.29', 8443, 5, 3, 2, 'Austin', 'Texas', 'United States', 5, 3, 1, 1, 1, 5, 'analytics_report_025', 'SESSION-N-025', NULL, 28, FALSE, 'Normal analyst file access'),
    ('2026-08-01 15:05:00-05', 'normal_user_026', 1, 1, '10.20.1.30', 443, 1, 1, 1, 'Buda', 'Texas', 'United States', 6, 4, 1, 1, 2, 1, 'vendor_profile_026', 'SESSION-N-026', NULL, 35, FALSE, 'Normal vendor account update'),
    ('2026-08-01 15:22:00-05', 'normal_user_027', 3, 1, '10.20.1.31', 9443, 2, 4, 1, 'Dallas', 'Texas', 'United States', 7, 4, 1, 1, 2, 4, 'admin_dashboard_027', 'SESSION-N-027', NULL, 42, FALSE, 'Normal approved admin action'),
    ('2026-08-01 15:39:00-05', 'normal_user_028', 5, 1, '10.20.1.32', 443, 3, 5, 4, 'Houston', 'Texas', 'United States', 3, 1, 1, 1, 1, 1, 'moderator_account_028', 'SESSION-N-028', NULL, 11, FALSE, 'Normal moderator password change'),
    ('2026-08-01 15:56:00-05', 'normal_user_029', 2, 1, '10.20.1.33', 443, 4, 3, 3, 'San Antonio', 'Texas', 'United States', 1, 1, 1, 1, 1, 1, 'buyer_account_029', 'SESSION-N-029', NULL, 18, FALSE, 'Normal successful buyer login'),
    ('2026-08-01 16:13:00-05', 'normal_user_030', 1, 1, '10.20.1.34', 443, 5, 3, 2, 'Fort Worth', 'Texas', 'United States', 2, 1, 1, 1, 1, 1, 'vendor_account_030', 'SESSION-N-030', NULL, 25, FALSE, 'Normal vendor logout'),
    ('2026-08-01 16:30:00-05', 'normal_user_031', 2, 1, '10.20.2.35', 443, 1, 1, 1, 'Killeen', 'Texas', 'United States', 4, 2, 1, 1, 2, 3, 'purchase_record_031', 'SESSION-N-031', NULL, 32, FALSE, 'Normal completed purchase'),
    ('2026-08-01 16:47:00-05', 'normal_user_032', 4, 1, '10.20.2.36', 8443, 2, 4, 1, 'Round Rock', 'Texas', 'United States', 5, 3, 1, 1, 2, 5, 'analytics_report_032', 'SESSION-N-032', NULL, 39, FALSE, 'Normal analyst file access'),
    ('2026-08-01 17:04:00-05', 'normal_user_033', 1, 1, '10.20.2.37', 443, 3, 5, 4, 'Austin', 'Texas', 'United States', 6, 4, 1, 1, 1, 1, 'vendor_profile_033', 'SESSION-N-033', NULL, 8, FALSE, 'Normal vendor account update'),
    ('2026-08-01 17:21:00-05', 'normal_user_034', 3, 1, '10.20.2.38', 9443, 4, 3, 3, 'Buda', 'Texas', 'United States', 7, 4, 1, 1, 1, 4, 'admin_dashboard_034', 'SESSION-N-034', NULL, 15, FALSE, 'Normal approved admin action'),
    ('2026-08-01 17:38:00-05', 'normal_user_035', 5, 1, '10.20.2.39', 443, 5, 3, 2, 'Dallas', 'Texas', 'United States', 3, 1, 1, 1, 1, 1, 'moderator_account_035', 'SESSION-N-035', NULL, 22, FALSE, 'Normal moderator password change'),
    ('2026-08-01 17:55:00-05', 'normal_user_036', 2, 1, '10.20.2.40', 443, 1, 1, 1, 'Houston', 'Texas', 'United States', 1, 1, 1, 1, 1, 1, 'buyer_account_036', 'SESSION-N-036', NULL, 29, FALSE, 'Normal successful buyer login'),
    ('2026-08-01 18:12:00-05', 'normal_user_037', 1, 1, '10.20.2.41', 443, 2, 4, 1, 'San Antonio', 'Texas', 'United States', 2, 1, 1, 1, 2, 1, 'vendor_account_037', 'SESSION-N-037', NULL, 36, FALSE, 'Normal vendor logout'),
    ('2026-08-01 18:29:00-05', 'normal_user_038', 2, 1, '10.20.2.42', 443, 3, 5, 4, 'Fort Worth', 'Texas', 'United States', 4, 2, 1, 1, 1, 3, 'purchase_record_038', 'SESSION-N-038', NULL, 5, FALSE, 'Normal completed purchase'),
    ('2026-08-01 18:46:00-05', 'normal_user_039', 4, 1, '10.20.2.43', 8443, 4, 3, 3, 'Killeen', 'Texas', 'United States', 5, 3, 1, 1, 1, 5, 'analytics_report_039', 'SESSION-N-039', NULL, 12, FALSE, 'Normal analyst file access'),
    ('2026-08-01 19:03:00-05', 'normal_user_040', 1, 1, '10.20.2.44', 443, 5, 3, 2, 'Round Rock', 'Texas', 'United States', 6, 4, 1, 1, 1, 1, 'vendor_profile_040', 'SESSION-N-040', NULL, 19, FALSE, 'Normal vendor account update'),
    ('2026-08-01 19:20:00-05', 'normal_user_041', 3, 1, '10.20.2.45', 9443, 1, 1, 1, 'Austin', 'Texas', 'United States', 7, 4, 1, 1, 1, 4, 'admin_dashboard_041', 'SESSION-N-041', NULL, 26, FALSE, 'Normal approved admin action'),
    ('2026-08-01 19:37:00-05', 'normal_user_042', 5, 1, '10.20.2.46', 443, 2, 4, 1, 'Buda', 'Texas', 'United States', 3, 1, 1, 1, 2, 1, 'moderator_account_042', 'SESSION-N-042', NULL, 33, FALSE, 'Normal moderator password change'),
    ('2026-08-01 19:54:00-05', 'normal_user_043', 2, 1, '10.20.2.47', 443, 3, 5, 4, 'Dallas', 'Texas', 'United States', 1, 1, 1, 1, 2, 1, 'buyer_account_043', 'SESSION-N-043', NULL, 40, FALSE, 'Normal successful buyer login'),
    ('2026-08-01 20:11:00-05', 'normal_user_044', 1, 1, '10.20.2.48', 443, 4, 3, 3, 'Houston', 'Texas', 'United States', 2, 1, 1, 1, 1, 1, 'vendor_account_044', 'SESSION-N-044', NULL, 9, FALSE, 'Normal vendor logout'),
    ('2026-08-01 20:28:00-05', 'normal_user_045', 2, 1, '10.20.2.49', 443, 5, 3, 2, 'San Antonio', 'Texas', 'United States', 4, 2, 1, 1, 1, 3, 'purchase_record_045', 'SESSION-N-045', NULL, 16, FALSE, 'Normal completed purchase'),
    ('2026-08-01 20:45:00-05', 'normal_user_046', 4, 1, '10.20.2.50', 8443, 1, 1, 1, 'Fort Worth', 'Texas', 'United States', 5, 3, 1, 1, 1, 5, 'analytics_report_046', 'SESSION-N-046', NULL, 23, FALSE, 'Normal analyst file access'),
    ('2026-08-01 21:02:00-05', 'normal_user_047', 1, 1, '10.20.2.51', 443, 2, 4, 1, 'Killeen', 'Texas', 'United States', 6, 4, 1, 1, 2, 1, 'vendor_profile_047', 'SESSION-N-047', NULL, 30, FALSE, 'Normal vendor account update'),
    ('2026-08-01 21:19:00-05', 'normal_user_048', 3, 1, '10.20.2.52', 9443, 3, 5, 4, 'Round Rock', 'Texas', 'United States', 7, 4, 1, 1, 2, 4, 'admin_dashboard_048', 'SESSION-N-048', NULL, 37, FALSE, 'Normal approved admin action'),
    ('2026-08-01 21:36:00-05', 'normal_user_049', 5, 1, '10.20.2.53', 443, 4, 3, 3, 'Austin', 'Texas', 'United States', 3, 1, 1, 1, 1, 1, 'moderator_account_049', 'SESSION-N-049', NULL, 6, FALSE, 'Normal moderator password change'),
    ('2026-08-01 21:53:00-05', 'normal_user_050', 2, 1, '10.20.2.54', 443, 5, 3, 2, 'Buda', 'Texas', 'United States', 1, 1, 1, 1, 1, 1, 'buyer_account_050', 'SESSION-N-050', NULL, 13, FALSE, 'Normal successful buyer login'),
    ('2026-08-01 22:10:00-05', 'normal_user_051', 1, 1, '10.20.2.55', 443, 1, 1, 1, 'Dallas', 'Texas', 'United States', 2, 1, 1, 1, 1, 1, 'vendor_account_051', 'SESSION-N-051', NULL, 20, FALSE, 'Normal vendor logout'),
    ('2026-08-01 22:27:00-05', 'normal_user_052', 2, 1, '10.20.2.56', 443, 2, 4, 1, 'Houston', 'Texas', 'United States', 4, 2, 1, 1, 1, 3, 'purchase_record_052', 'SESSION-N-052', NULL, 27, FALSE, 'Normal completed purchase'),
    ('2026-08-01 22:44:00-05', 'normal_user_053', 4, 1, '10.20.2.57', 8443, 3, 5, 4, 'San Antonio', 'Texas', 'United States', 5, 3, 1, 1, 2, 5, 'analytics_report_053', 'SESSION-N-053', NULL, 34, FALSE, 'Normal analyst file access'),
    ('2026-08-01 23:01:00-05', 'normal_user_054', 1, 1, '10.20.2.58', 443, 4, 3, 3, 'Fort Worth', 'Texas', 'United States', 6, 4, 1, 1, 2, 1, 'vendor_profile_054', 'SESSION-N-054', NULL, 41, FALSE, 'Normal vendor account update'),
    ('2026-08-01 23:18:00-05', 'normal_user_055', 3, 1, '10.20.2.59', 9443, 5, 3, 2, 'Killeen', 'Texas', 'United States', 7, 4, 1, 1, 1, 4, 'admin_dashboard_055', 'SESSION-N-055', NULL, 10, FALSE, 'Normal approved admin action'),
    ('2026-08-01 23:35:00-05', 'normal_user_056', 5, 1, '10.20.2.60', 443, 1, 1, 1, 'Round Rock', 'Texas', 'United States', 3, 1, 1, 1, 1, 1, 'moderator_account_056', 'SESSION-N-056', NULL, 17, FALSE, 'Normal moderator password change'),
    ('2026-08-01 23:52:00-05', 'normal_user_057', 2, 1, '10.20.2.61', 443, 2, 4, 1, 'Austin', 'Texas', 'United States', 1, 1, 1, 1, 1, 1, 'buyer_account_057', 'SESSION-N-057', NULL, 24, FALSE, 'Normal successful buyer login'),
    ('2026-08-02 00:09:00-05', 'normal_user_058', 1, 1, '10.20.2.62', 443, 3, 5, 4, 'Buda', 'Texas', 'United States', 2, 1, 1, 1, 2, 1, 'vendor_account_058', 'SESSION-N-058', NULL, 31, FALSE, 'Normal vendor logout'),
    ('2026-08-02 00:26:00-05', 'normal_user_059', 2, 1, '10.20.2.63', 443, 4, 3, 3, 'Dallas', 'Texas', 'United States', 4, 2, 1, 1, 2, 3, 'purchase_record_059', 'SESSION-N-059', NULL, 38, FALSE, 'Normal completed purchase'),
    ('2026-08-02 00:43:00-05', 'normal_user_060', 4, 1, '10.20.2.64', 8443, 5, 3, 2, 'Houston', 'Texas', 'United States', 5, 3, 1, 1, 1, 5, 'analytics_report_060', 'SESSION-N-060', NULL, 7, FALSE, 'Normal analyst file access'),
    ('2026-08-02 01:00:00-05', 'normal_user_061', 1, 1, '10.20.3.65', 443, 1, 1, 1, 'San Antonio', 'Texas', 'United States', 6, 4, 1, 1, 1, 1, 'vendor_profile_061', 'SESSION-N-061', NULL, 14, FALSE, 'Normal vendor account update'),
    ('2026-08-02 01:17:00-05', 'normal_user_062', 3, 1, '10.20.3.66', 9443, 2, 4, 1, 'Fort Worth', 'Texas', 'United States', 7, 4, 1, 1, 1, 4, 'admin_dashboard_062', 'SESSION-N-062', NULL, 21, FALSE, 'Normal approved admin action'),
    ('2026-08-02 01:34:00-05', 'normal_user_063', 5, 1, '10.20.3.67', 443, 3, 5, 4, 'Killeen', 'Texas', 'United States', 3, 1, 1, 1, 1, 1, 'moderator_account_063', 'SESSION-N-063', NULL, 28, FALSE, 'Normal moderator password change'),
    ('2026-08-02 01:51:00-05', 'normal_user_064', 2, 1, '10.20.3.68', 443, 4, 3, 3, 'Round Rock', 'Texas', 'United States', 1, 1, 1, 1, 2, 1, 'buyer_account_064', 'SESSION-N-064', NULL, 35, FALSE, 'Normal successful buyer login'),
    ('2026-08-02 02:08:00-05', 'normal_user_065', 1, 1, '10.20.3.69', 443, 5, 3, 2, 'Austin', 'Texas', 'United States', 2, 1, 1, 1, 2, 1, 'vendor_account_065', 'SESSION-N-065', NULL, 42, FALSE, 'Normal vendor logout');

-- 35 suspicious activity records
INSERT INTO security_logs_raw
(
    event_time, username, user_role_id, account_status_id, ip_address,
    port_number, device_type_id, operating_system_id, browser_name_id,
    location_city, location_region, location_country, event_type_id,
    event_category_id, action_taken_id, status_id, severity_id,
    resource_type_id, resource_name, session_id, failure_reason_id,
    risk_score, watchlist_flag, notes
)
VALUES
    ('2026-08-02 02:25:00-05', 'threat_alpha', 6, 1, '198.51.100.10', 443, 1, 1, 5, 'Berlin', 'Berlin', 'Germany', 1, 1, 2, 2, 3, 1, 'target_account_066', 'SESSION-ATTACK-01', 1, 75, TRUE, 'Repeated invalid password attempts'),
    ('2026-08-02 02:42:00-05', 'threat_beta', 6, 1, '198.51.100.10', 443, 2, 4, 5, 'Moscow', 'Moscow', 'Russia', 1, 1, 2, 2, 3, 1, 'unknown_account_067', 'SESSION-ATTACK-02', 2, 82, TRUE, 'Repeated login attempts using invalid usernames'),
    ('2026-08-02 02:59:00-05', 'threat_gamma', 2, 2, '192.0.2.12', 443, 3, 5, 4, 'Beijing', 'Beijing', 'China', 1, 1, 3, 3, 3, 1, 'locked_buyer_account_068', 'SESSION-ATTACK-03', 3, 89, TRUE, 'Login attempt against a locked account'),
    ('2026-08-02 03:16:00-05', 'threat_alpha', 6, 1, '198.51.100.10', 8443, 4, 3, 5, 'Lagos', 'Lagos', 'Nigeria', 7, 5, 3, 3, 4, 4, 'admin_control_panel_069', 'SESSION-ATTACK-01', 4, 96, TRUE, 'Unauthorized attempt to access the admin panel'),
    ('2026-08-02 03:33:00-05', 'insider_delta', 4, 3, '203.0.113.14', 22, 5, 3, 5, 'Bucharest', 'Bucharest', 'Romania', 5, 5, 1, 1, 4, 5, 'restricted_archive_070', 'SESSION-ATTACK-04', NULL, 78, TRUE, 'Suspended account still accessed a restricted file'),
    ('2026-08-02 03:50:00-05', 'threat_alpha', 2, 1, '198.51.100.10', 443, 1, 1, 5, 'Sao Paulo', 'Sao Paulo', 'Brazil', 4, 2, 4, 2, 3, 3, 'high_value_transaction_071', 'SESSION-ATTACK-01', 5, 85, TRUE, 'High-value purchase failed after a timeout'),
    ('2026-08-02 04:07:00-05', 'flagged_user_072', 3, 1, '198.51.100.16', 8080, 2, 4, 5, 'Kyiv', 'Kyiv', 'Ukraine', 7, 3, 5, 2, 4, 6, 'internal_api_072', 'SESSION-S-072', 7, 92, TRUE, 'Critical API error during an administrative action'),
    ('2026-08-02 04:24:00-05', 'flagged_user_073', 6, 1, '203.0.113.17', 9001, 3, 5, 4, 'Singapore', 'Singapore', 'Singapore', 1, 5, 4, 4, 4, 1, 'privileged_account_073', 'SESSION-S-073', 6, 99, TRUE, 'Tor login flagged for manual security review'),
    ('2026-08-02 04:41:00-05', 'locked_success', 2, 2, '192.0.2.18', 443, 4, 3, 5, 'Berlin', 'Berlin', 'Germany', 1, 1, 1, 1, 3, 1, 'locked_buyer_account_074', 'SESSION-S-074', NULL, 81, TRUE, 'Locked account still completed a successful login'),
    ('2026-08-02 04:58:00-05', 'flagged_user_075', 6, 1, '198.51.100.19', 443, 5, 3, 5, 'Moscow', 'Moscow', 'Russia', 6, 4, 2, 2, 3, 2, 'protected_product_listing_075', 'SESSION-S-075', 4, 88, TRUE, 'Guest attempted an unauthorized product update'),
    ('2026-08-02 05:15:00-05', 'threat_alpha', 6, 1, '198.51.100.10', 443, 1, 1, 5, 'Beijing', 'Beijing', 'China', 1, 1, 2, 2, 3, 1, 'target_account_076', 'SESSION-ATTACK-01', 1, 95, TRUE, 'Repeated invalid password attempts'),
    ('2026-08-02 05:32:00-05', 'flagged_user_077', 6, 1, '192.0.2.21', 443, 2, 4, 5, 'Lagos', 'Lagos', 'Nigeria', 1, 1, 2, 2, 3, 1, 'unknown_account_077', 'SESSION-S-077', 2, 77, TRUE, 'Repeated login attempts using invalid usernames'),
    ('2026-08-02 05:49:00-05', 'flagged_user_078', 2, 2, '198.51.100.22', 443, 3, 5, 4, 'Bucharest', 'Bucharest', 'Romania', 1, 1, 3, 3, 3, 1, 'locked_buyer_account_078', 'SESSION-S-078', 3, 84, TRUE, 'Login attempt against a locked account'),
    ('2026-08-02 06:06:00-05', 'flagged_user_079', 6, 1, '203.0.113.23', 8443, 4, 3, 5, 'Sao Paulo', 'Sao Paulo', 'Brazil', 7, 5, 3, 3, 4, 4, 'admin_control_panel_079', 'SESSION-S-079', 4, 91, TRUE, 'Unauthorized attempt to access the admin panel'),
    ('2026-08-02 06:23:00-05', 'flagged_user_080', 4, 3, '192.0.2.24', 22, 5, 3, 5, 'Kyiv', 'Kyiv', 'Ukraine', 5, 5, 4, 3, 4, 5, 'restricted_archive_080', 'SESSION-S-080', 6, 98, TRUE, 'Suspicious bulk access to restricted files'),
    ('2026-08-02 06:40:00-05', 'flagged_user_081', 2, 1, '198.51.100.25', 443, 1, 1, 5, 'Singapore', 'Singapore', 'Singapore', 4, 2, 4, 2, 3, 3, 'high_value_transaction_081', 'SESSION-S-081', 5, 80, TRUE, 'High-value purchase failed after a timeout'),
    ('2026-08-02 06:57:00-05', 'flagged_user_082', 3, 1, '203.0.113.26', 8080, 2, 4, 5, 'Berlin', 'Berlin', 'Germany', 7, 3, 5, 2, 4, 6, 'internal_api_082', 'SESSION-S-082', 7, 87, TRUE, 'Critical API error during an administrative action'),
    ('2026-08-02 07:14:00-05', 'flagged_user_083', 6, 1, '192.0.2.27', 9001, 3, 5, 4, 'Moscow', 'Moscow', 'Russia', 1, 5, 4, 4, 4, 1, 'privileged_account_083', 'SESSION-S-083', 6, 94, TRUE, 'Tor login flagged for manual security review'),
    ('2026-08-02 07:31:00-05', 'flagged_user_084', 2, 2, '198.51.100.28', 443, 4, 3, 5, 'Beijing', 'Beijing', 'China', 3, 5, 3, 3, 4, 1, 'locked_buyer_account_084', 'SESSION-S-084', 6, 76, TRUE, 'Blocked password change from an unusual location'),
    ('2026-08-02 07:48:00-05', 'flagged_user_085', 6, 1, '203.0.113.29', 443, 5, 3, 5, 'Lagos', 'Lagos', 'Nigeria', 6, 4, 2, 2, 3, 2, 'protected_product_listing_085', 'SESSION-S-085', 4, 83, TRUE, 'Guest attempted an unauthorized product update'),
    ('2026-08-02 08:05:00-05', 'flagged_user_086', 6, 1, '192.0.2.30', 443, 1, 1, 5, 'Bucharest', 'Bucharest', 'Romania', 1, 1, 2, 2, 3, 1, 'target_account_086', 'SESSION-S-086', 1, 90, TRUE, 'Repeated invalid password attempts'),
    ('2026-08-02 08:22:00-05', 'flagged_user_087', 6, 1, '198.51.100.31', 443, 2, 4, 5, 'Sao Paulo', 'Sao Paulo', 'Brazil', 1, 1, 2, 2, 3, 1, 'unknown_account_087', 'SESSION-S-087', 2, 97, TRUE, 'Repeated login attempts using invalid usernames'),
    ('2026-08-02 08:39:00-05', 'flagged_user_088', 2, 2, '203.0.113.32', 443, 3, 5, 4, 'Kyiv', 'Kyiv', 'Ukraine', 1, 1, 3, 3, 3, 1, 'locked_buyer_account_088', 'SESSION-S-088', 3, 79, TRUE, 'Login attempt against a locked account'),
    ('2026-08-02 08:56:00-05', 'flagged_user_089', 6, 1, '192.0.2.33', 8443, 4, 3, 5, 'Singapore', 'Singapore', 'Singapore', 7, 5, 3, 3, 4, 4, 'admin_control_panel_089', 'SESSION-S-089', 4, 86, TRUE, 'Unauthorized attempt to access the admin panel'),
    ('2026-08-02 09:13:00-05', 'flagged_user_090', 4, 3, '198.51.100.34', 22, 5, 3, 5, 'Berlin', 'Berlin', 'Germany', 5, 5, 4, 3, 4, 5, 'restricted_archive_090', 'SESSION-S-090', 6, 93, TRUE, 'Suspicious bulk access to restricted files'),
    ('2026-08-02 09:30:00-05', 'flagged_user_091', 2, 1, '203.0.113.35', 443, 1, 1, 5, 'Moscow', 'Moscow', 'Russia', 4, 2, 4, 2, 3, 3, 'high_value_transaction_091', 'SESSION-S-091', 5, 75, TRUE, 'High-value purchase failed after a timeout'),
    ('2026-08-02 09:47:00-05', 'flagged_user_092', 3, 1, '192.0.2.36', 8080, 2, 4, 5, 'Beijing', 'Beijing', 'China', 7, 3, 5, 2, 4, 6, 'internal_api_092', 'SESSION-S-092', 7, 82, TRUE, 'Critical API error during an administrative action'),
    ('2026-08-02 10:04:00-05', 'flagged_user_093', 6, 1, '198.51.100.37', 9001, 3, 5, 4, 'Lagos', 'Lagos', 'Nigeria', 1, 5, 4, 4, 4, 1, 'privileged_account_093', 'SESSION-S-093', 6, 89, TRUE, 'Tor login flagged for manual security review'),
    ('2026-08-02 10:21:00-05', 'flagged_user_094', 2, 2, '203.0.113.38', 443, 4, 3, 5, 'Bucharest', 'Bucharest', 'Romania', 3, 5, 3, 3, 4, 1, 'locked_buyer_account_094', 'SESSION-S-094', 6, 96, TRUE, 'Blocked password change from an unusual location'),
    ('2026-08-02 10:38:00-05', 'flagged_user_095', 6, 1, '192.0.2.39', 443, 5, 3, 5, 'Sao Paulo', 'Sao Paulo', 'Brazil', 6, 4, 2, 2, 3, 2, 'protected_product_listing_095', 'SESSION-S-095', 4, 78, TRUE, 'Guest attempted an unauthorized product update'),
    ('2026-08-02 10:55:00-05', 'flagged_user_096', 6, 1, '198.51.100.40', 443, 1, 1, 5, 'Kyiv', 'Kyiv', 'Ukraine', 1, 1, 2, 2, 3, 1, 'target_account_096', 'SESSION-S-096', 1, 85, TRUE, 'Repeated invalid password attempts'),
    ('2026-08-02 11:12:00-05', 'flagged_user_097', 6, 1, '203.0.113.41', 443, 2, 4, 5, 'Singapore', 'Singapore', 'Singapore', 1, 1, 2, 2, 3, 1, 'unknown_account_097', 'SESSION-S-097', 2, 92, TRUE, 'Repeated login attempts using invalid usernames'),
    ('2026-08-02 11:29:00-05', 'flagged_user_098', 2, 2, '192.0.2.42', 443, 3, 5, 4, 'Berlin', 'Berlin', 'Germany', 1, 1, 3, 3, 3, 1, 'locked_buyer_account_098', 'SESSION-S-098', 3, 99, TRUE, 'Login attempt against a locked account'),
    ('2026-08-02 11:46:00-05', 'flagged_user_099', 6, 1, '198.51.100.43', 8443, 4, 3, 5, 'Moscow', 'Moscow', 'Russia', 7, 5, 3, 3, 4, 4, 'admin_control_panel_099', 'SESSION-S-099', 4, 81, TRUE, 'Unauthorized attempt to access the admin panel'),
    ('2026-08-02 12:03:00-05', 'flagged_user_100', 4, 3, '203.0.113.44', 22, 5, 3, 5, 'Beijing', 'Beijing', 'China', 5, 5, 4, 3, 4, 5, 'restricted_archive_100', 'SESSION-S-100', 6, 88, TRUE, 'Suspicious bulk access to restricted files');

SELECT COUNT(*) AS total_normalized_records
FROM security_logs_raw;

SELECT COUNT(*) AS normal_records
FROM security_logs_raw
WHERE watchlist_flag = FALSE;

SELECT COUNT(*) AS suspicious_records
FROM security_logs_raw
WHERE watchlist_flag = TRUE;