.PHONY: up down build restart logs ps seed clean help

# Variables
DOCKER_COMPOSE = docker-compose
DB_CONTAINER = api-store-db
DB_NAME = wshop_api_store
DB_USER = user
DB_PASSWORD = password
SQL_FILE = wshop_api_store.sql

# Default target
all: build up seed

# Help command
help:
	@echo "Available commands:"
	@echo "  make up        - Start all containers"
	@echo "  make down      - Stop all containers"
	@echo "  make build     - Build all containers"
	@echo "  make restart   - Restart all containers"
	@echo "  make logs      - View container logs"
	@echo "  make ps        - List running containers"
	@echo "  make seed      - Seed the database"
	@echo "  make clean     - Remove all containers and volumes"
	@echo "  make db        - Connect to database"

# Build the Docker containers
build:
	$(DOCKER_COMPOSE) build

# Start the Docker containers
up:
	$(DOCKER_COMPOSE) up -d

# Stop the Docker containers
down:
	$(DOCKER_COMPOSE) down

# Restart the Docker containers
restart:
	$(DOCKER_COMPOSE) restart

# View container logs
logs:
	$(DOCKER_COMPOSE) logs -f

# List running containers
ps:
	$(DOCKER_COMPOSE) ps

# Seed the database
seed:
	@if [ -f $(SQL_FILE) ]; then \
		echo "Importing $(SQL_FILE)..."; \
		cat $(SQL_FILE) | docker exec -i $(DB_CONTAINER) mysql -u$(DB_USER) -p$(DB_PASSWORD); \
		echo "Database seeded successfully!"; \
	else \
		echo "Error: $(SQL_FILE) not found!"; \
		exit 1; \
	fi
# Connect to database
db:
	docker exec -i $(DB_CONTAINER) mysql -u$(DB_USER) -p$(DB_PASSWORD) $(DB_NAME)
# Clean up Docker containers and volumes
clean:
	$(DOCKER_COMPOSE) down -v
	docker system prune -f