DROP TABLE IF EXISTS security_logs_raw;

CREATE TABLE security_logs_raw
(
    log_id            SERIAL PRIMARY KEY,
    event_time        TIMESTAMPTZ  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    username          VARCHAR(50)  NOT NULL,
    user_role         VARCHAR(20)  NOT NULL,
    account_status    VARCHAR(20)  NOT NULL,
    ip_address        VARCHAR(45)  NOT NULL,
    port_number       INT          NOT NULL
        CHECK (port_number BETWEEN 1 AND 65535),
    device_type       VARCHAR(20)  NOT NULL,
    operating_system  VARCHAR(20)  NOT NULL,
    browser_name      VARCHAR(20)  NOT NULL,
    location_city     VARCHAR(50)  NOT NULL,
    location_region   VARCHAR(50)  NOT NULL,
    location_country  VARCHAR(50)  NOT NULL,
    event_type        VARCHAR(30)  NOT NULL,
    event_category    VARCHAR(30)  NOT NULL,
    action_taken      VARCHAR(20)  NOT NULL,
    status            VARCHAR(20)  NOT NULL,
    severity          VARCHAR(20)  NOT NULL,
    resource_type     VARCHAR(30)  NOT NULL,
    resource_name     VARCHAR(100) NOT NULL,
    session_id        VARCHAR(100) NOT NULL,
    failure_reason    VARCHAR(50),
    risk_score        SMALLINT     NOT NULL
        CHECK (risk_score BETWEEN 0 AND 100),
    watchlist_flag    BOOLEAN      NOT NULL DEFAULT FALSE,
    notes             VARCHAR(255)
);
