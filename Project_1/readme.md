# Project 1: Neon Black Market Database

## Project Overview

This project converts fragmented user complaints and administrative notes into detailed user stories and a relational PostgreSQL database design.

The database supports:

- Users and verified accounts
- Vendor profiles
- Product listings
- Purchase transactions
- Product-access tracking
- Product reviews and ratings

## Project Files

- `Stories.md` — six user stories developed from the provided fragments
- `Tables.md` — table definitions, relationships, and design logic
- `Dockerfile` — PostgreSQL Docker configuration
- `init.sql` — creates and seeds the project tables

## Database Configuration

- Database: `sql_docker`
- Username: `admin`
- Password: `secret`
- Host: `localhost`
- External port: `5433`
- PostgreSQL container port: `5432`

## Build and Run

Build the Docker image:

```bash
docker build -t neon-black-market-db .