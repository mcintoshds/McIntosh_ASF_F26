CREATE TABLE users (
                       user_id SERIAL PRIMARY KEY,
                       username VARCHAR(50) UNIQUE NOT NULL,
                       is_verified BOOLEAN NOT NULL DEFAULT FALSE,
                       account_status VARCHAR(20) NOT NULL,
                       created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vendors (
                         vendor_id SERIAL PRIMARY KEY,
                         user_id INTEGER UNIQUE NOT NULL,
                         display_name VARCHAR(75) NOT NULL,
                         joined_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                         FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE products (
                          product_id SERIAL PRIMARY KEY,
                          vendor_id INTEGER NOT NULL,
                          product_name VARCHAR(100) NOT NULL,
                          price DECIMAL(10, 2) NOT NULL,
                          is_available BOOLEAN NOT NULL DEFAULT TRUE,
                          FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id)
);

CREATE TABLE transactions (
                              transaction_id SERIAL PRIMARY KEY,
                              buyer_id INTEGER NOT NULL,
                              product_id INTEGER NOT NULL,
                              reference_number VARCHAR(50) UNIQUE NOT NULL,
                              transaction_status VARCHAR(20) NOT NULL,
                              purchased_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                              FOREIGN KEY (buyer_id) REFERENCES users(user_id),
                              FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE product_access (
                                access_id SERIAL PRIMARY KEY,
                                transaction_id INTEGER UNIQUE NOT NULL,
                                access_status VARCHAR(20) NOT NULL,
                                granted_at TIMESTAMP,
                                FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id)
);

CREATE TABLE reviews (
                         review_id SERIAL PRIMARY KEY,
                         product_id INTEGER NOT NULL,
                         user_id INTEGER NOT NULL,
                         rating INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),
                         review_text VARCHAR(500),
                         created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                         FOREIGN KEY (product_id) REFERENCES products(product_id),
                         FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Seed users
INSERT INTO users (username, is_verified, account_status)
VALUES
    ('neon_vendor', TRUE, 'active'),
    ('shadow_buyer', TRUE, 'active'),
    ('anonymous_buyer', FALSE, 'active');

-- Seed vendor
INSERT INTO vendors (user_id, display_name)
VALUES
    (1, 'Neon Supply');

-- Seed products
INSERT INTO products (vendor_id, product_name, price, is_available)
VALUES
    (1, 'Encrypted Communication Guide', 19.99, TRUE),
    (1, 'Digital Privacy Toolkit', 34.99, TRUE);

-- Seed transactions
INSERT INTO transactions
(buyer_id, product_id, reference_number, transaction_status)
VALUES
    (2, 1, 'NBM-10001', 'complete'),
    (3, 2, 'NBM-10002', 'complete');

-- Seed product access
INSERT INTO product_access
(transaction_id, access_status, granted_at)
VALUES
    (1, 'granted', CURRENT_TIMESTAMP),
    (2, 'pending', NULL);

-- Seed reviews
INSERT INTO reviews
(product_id, user_id, rating, review_text)
VALUES
    (1, 2, 5, 'The guide was useful and easy to understand.'),
    (2, 3, 4, 'The toolkit included several helpful resources.');