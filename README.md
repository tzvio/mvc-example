# WSHOP API Store Exercise

This is an example app which provides a REST API with CRUD actions (Create, Read, Update, Delete) for managing shops.

## Requirements

### Option 1: Using Docker
- Docker
- Docker Compose

### Option 2: Local Setup
- PHP 8.x
- MySQL Server
- Web server (Apache/Nginx) or PHP internal server

## Installation

### Option 1: Using Docker

1. Clone the repository
2. Run the following commands:
```bash
# Build and start containers
make build
make up

# Seed the database
make seed
```

Available make commands:
- `make up` - Start all containers
- `make down` - Stop all containers
- `make build` - Build all containers
- `make restart` - Restart all containers
- `make logs` - View container logs
- `make ps` - List running containers
- `make seed` - Seed the database
- `make clean` - Remove all containers and volumes
- `make db` - Connect to database

### Option 2: Local Setup

1. Import MySQL dump database:
```bash
mysql -u your_username -p your_database < wshop_api_store.sql
```

2. Configure database settings in `config/config.php`:
```php
define('DB_HOST', 'localhost');
define('DB_USER', 'your_username');
define('DB_PASS', 'your_password');
define('DB_NAME', 'your_database');
```

3. Setup web server with root directory pointing to `public/`, or run PHP internal server:
```bash
cd public
php -S 127.0.0.1:8000
```

## API Endpoints

| Endpoint    | Method | Description                    | Parameters/Body                                |
|-------------|--------|--------------------------------|----------------------------------------------|
| /shops      | GET    | Return all shops              | Optional: ?orderby=[field]&direction=[dir]   |
| /shops/{id} | GET    | Return one shop               | -                                            |
| /shops      | POST   | Create new shop               | JSON body (see below)                        |
| /shops/{id} | PUT    | Update a shop                 | JSON body (see below)                        |
| /shops/{id} | DELETE | Delete a shop                 | -                                            |

### POST /shops
Creates a new shop. Required fields are marked with *.

Request body (JSON):
```json
{
    "shop_name": "string *",          // Required
    "shop_description": "string",
    "shop_address": "string",
    "shop_phone": "string",
    "shop_email": "string",
    "shop_website": "string"
}
```

### PUT /shops/{id}
Updates an existing shop. All fields are optional.

Request body (JSON):
```json
{
    "shop_name": "string",
    "shop_description": "string",
    "shop_address": "string",
    "shop_phone": "string",
    "shop_email": "string",
    "shop_website": "string"
}
```

### Example Requests

Create a new shop:
```bash
curl -X POST http://localhost:8000/shops \
  -H "Content-Type: application/json" \
  -d '{
    "shop_name": "My Shop",
    "shop_description": "My shop description",
    "shop_address": "123 Main St",
    "shop_phone": "+1 234 567 8900",
    "shop_email": "shop@example.com",
    "shop_website": "https://myshop.com"
  }'
```

Update a shop:
```bash
curl -X PUT http://localhost:8000/shops/1 \
  -H "Content-Type: application/json" \
  -d '{
    "shop_name": "Updated Shop Name",
    "shop_description": "Updated description"
  }'
```
## Framework Structure

The app is based on a basic MVC framework:

```
/public/
    index.php           # Entry point, includes required files and dispatches routes
/Core/
    Model.php          # Provides database access
    Router.php         # Provides routing functionality
    routes.php         # List of custom created routes
    View.php           # Provides JSON output and API headers
/config/
    config.php         # Database configuration
/app/
    controllers/
        ShopController.php  # Handles all REST API calls
    models/
        ShopModel.php      # Runs the required queries for CRUD actions
```

## Development

To connect to the database (Docker setup):
```bash
make db
```

To view logs (Docker setup):
```bash
make logs
```

## Testing

### Running Tests

```bash
# Run all tests
./vendor/bin/phpunit

# Run specific test file
./vendor/bin/phpunit tests/ApiTest.php

# Run tests with coverage report
./vendor/bin/phpunit --coverage-html coverage
```
