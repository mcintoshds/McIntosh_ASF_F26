DROP TABLE IF EXISTS security_logs_raw;
DROP TABLE IF EXISTS user_role;
DROP TABLE IF EXISTS account_status;
DROP TABLE IF EXISTS device_type;
DROP TABLE IF EXISTS operating_system;
DROP TABLE IF EXISTS browser_name;
DROP TABLE IF EXISTS event_type;
DROP TABLE IF EXISTS event_category;
DROP TABLE IF EXISTS action_taken;
DROP TABLE IF EXISTS status;
DROP TABLE IF EXISTS severity;
DROP TABLE IF EXISTS resource_type;
DROP TABLE IF EXISTS failure_reason;

CREATE TABLE user_role
(
    user_role_id SERIAL PRIMARY KEY,
    user_role    VARCHAR(20) NOT NULL UNIQUE
        CHECK (user_role IN
               ('vendor', 'buyer', 'admin', 'analyst', 'moderator', 'guest'))
);

CREATE TABLE account_status
(
    account_status_id SERIAL PRIMARY KEY,
    account_status    VARCHAR(20) NOT NULL UNIQUE
        CHECK (account_status IN
               ('active', 'locked', 'suspended', 'disabled', 'pending'))
);

CREATE TABLE device_type
(
    device_type_id SERIAL PRIMARY KEY,
    device_type    VARCHAR(20) NOT NULL UNIQUE
        CHECK (device_type IN
               ('desktop', 'mobile', 'tablet', 'kiosk', 'server'))
);

CREATE TABLE operating_system
(
    operating_system_id SERIAL PRIMARY KEY,
    operating_system    VARCHAR(20) NOT NULL UNIQUE
        CHECK (operating_system IN
               ('Windows', 'macOS', 'Linux', 'Android', 'iOS'))
);

CREATE TABLE browser_name
(
    browser_name_id SERIAL PRIMARY KEY,
    browser_name    VARCHAR(20) NOT NULL UNIQUE
        CHECK (browser_name IN
               ('Chrome', 'Firefox', 'Edge', 'Safari', 'Tor'))
);

CREATE TABLE event_type
(
    event_type_id SERIAL PRIMARY KEY,
    event_type    VARCHAR(30) NOT NULL UNIQUE
        CHECK (event_type IN
               ('login', 'logout', 'password_change', 'purchase',
                'file_access', 'account_update', 'admin_action'))
);

CREATE TABLE event_category
(
    event_category_id SERIAL PRIMARY KEY,
    event_category    VARCHAR(30) NOT NULL UNIQUE
        CHECK (event_category IN
               ('authentication', 'transaction', 'system',
                'user_management', 'security'))
);

CREATE TABLE action_taken
(
    action_taken_id SERIAL PRIMARY KEY,
    action_taken    VARCHAR(20) NOT NULL UNIQUE
        CHECK (action_taken IN
               ('allow', 'deny', 'block', 'flag', 'alert'))
);

CREATE TABLE status
(
    status_id SERIAL PRIMARY KEY,
    status    VARCHAR(20) NOT NULL UNIQUE
        CHECK (status IN
               ('success', 'failed', 'blocked', 'pending'))
);

CREATE TABLE severity
(
    severity_id SERIAL PRIMARY KEY,
    severity    VARCHAR(20) NOT NULL UNIQUE
        CHECK (severity IN
               ('low', 'medium', 'high', 'critical'))
);

CREATE TABLE resource_type
(
    resource_type_id SERIAL PRIMARY KEY,
    resource_type    VARCHAR(30) NOT NULL UNIQUE
        CHECK (resource_type IN
               ('user_account', 'product_listing', 'transaction_record',
                'admin_panel', 'file_storage', 'api_endpoint'))
);

CREATE TABLE failure_reason
(
    failure_reason_id SERIAL PRIMARY KEY,
    failure_reason    VARCHAR(50) NOT NULL UNIQUE
        CHECK (failure_reason IN
               ('invalid_password', 'invalid_username', 'account_locked',
                'insufficient_permissions', 'timeout',
                'suspicious_activity', 'system_error'))
);

CREATE TABLE security_logs_raw
(
    log_id                 SERIAL PRIMARY KEY,
    event_time             TIMESTAMPTZ  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    username               VARCHAR(50)  NOT NULL,
    user_role_id           INT          NOT NULL
        REFERENCES user_role (user_role_id),
    account_status_id      INT          NOT NULL
        REFERENCES account_status (account_status_id),
    ip_address             VARCHAR(45)  NOT NULL,
    port_number            INT          NOT NULL
        CHECK (port_number BETWEEN 1 AND 65535),
    device_type_id         INT          NOT NULL
        REFERENCES device_type (device_type_id),
    operating_system_id    INT          NOT NULL
        REFERENCES operating_system (operating_system_id),
    browser_name_id        INT          NOT NULL
        REFERENCES browser_name (browser_name_id),
    location_city          VARCHAR(50)  NOT NULL,
    location_region        VARCHAR(50)  NOT NULL,
    location_country       VARCHAR(50)  NOT NULL,
    event_type_id          INT          NOT NULL
        REFERENCES event_type (event_type_id),
    event_category_id      INT          NOT NULL
        REFERENCES event_category (event_category_id),
    action_taken_id        INT          NOT NULL
        REFERENCES action_taken (action_taken_id),
    status_id              INT          NOT NULL
        REFERENCES status (status_id),
    severity_id            INT          NOT NULL
        REFERENCES severity (severity_id),
    resource_type_id       INT          NOT NULL
        REFERENCES resource_type (resource_type_id),
    resource_name          VARCHAR(100) NOT NULL,
    session_id             VARCHAR(100) NOT NULL,
    failure_reason_id      INT
        REFERENCES failure_reason (failure_reason_id),
    risk_score             SMALLINT     NOT NULL
        CHECK (risk_score BETWEEN 0 AND 100),
    watchlist_flag         BOOLEAN      NOT NULL DEFAULT FALSE,
    notes                  VARCHAR(255)
);