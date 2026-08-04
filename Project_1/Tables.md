# Neon Black Market Tables

## Table: users

Stores the marketplace accounts used by buyers, shoppers, and vendors.

- user_id (PK)
- username
- is_verified
- account_status
- created_at

## Table: vendors

Stores vendor profiles and connects each vendor to a user account.

- vendor_id (PK)
- user_id (FK) → users.user_id
- display_name
- joined_at

## Table: products

Stores products and identifies the vendor responsible for each listing.

- product_id (PK)
- vendor_id (FK) → vendors.vendor_id
- product_name
- price
- is_available

## Table: transactions

Stores each purchase and connects the buyer to the purchased product.

- transaction_id (PK)
- buyer_id (FK) → users.user_id
- product_id (FK) → products.product_id
- reference_number (UNIQUE)
- transaction_status
- purchased_at

## Table: product_access

Records whether a buyer received access to a product after completing a transaction.

- access_id (PK)
- transaction_id (FK) → transactions.transaction_id
- access_status
- granted_at

## Table: reviews

Stores product ratings and connects each review to the user who submitted it.

- review_id (PK)
- product_id (FK) → products.product_id
- user_id (FK) → users.user_id
- rating
- review_text
- created_at

# Relationships and Design Logic

1. One user can have one vendor profile, while each vendor profile belongs to a specific user account.

2. One vendor can list many products, but each product belongs to one vendor. This ensures that every product has an identifiable owner.

3. One user can make many transactions, but each transaction belongs to one buyer.

4. One product can appear in many transactions, but each transaction refers to one product.

5. Each completed transaction can have a product-access record. This makes it possible to confirm whether access was granted after a purchase.

6. One user can submit multiple reviews, but each review is connected to one user. The users table stores verification status, allowing the system to identify reviews from verified accounts.

7. One product can have multiple reviews, but each review is written for one product.

8. The unique reference number in the transactions table helps the system identify duplicate transaction processing and investigate duplicate charges.

# Connection to User Stories

- The vendors and products relationship ensures that products are tied to vendors.
- The users and transactions relationship allows buyers to view their purchase history.
- The product_access table records whether access was granted after a completed purchase.
- The transaction reference number helps identify duplicate charges.
- The reviews and products relationship allows shoppers to read product reviews and ratings.
- The reviews and users relationship allows the system to determine whether a review came from a verified account.