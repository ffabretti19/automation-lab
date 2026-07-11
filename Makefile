.PHONY: help

help:
	@echo ""
	@echo "Automation Lab"
	@echo ""
	@echo "Available commands:"
	@echo ""
	@echo "  make up              Start containers"
	@echo "  make down            Stop containers"
	@echo "  make restart         Restart containers"
	@echo "  make ps              List containers"
	@echo "  make logs            Follow logs"
	@echo "  make config          Validate compose"
	@echo "  make backup          Backup PostgreSQL"
	@echo "  make list-backups    List available backups"
	@echo ""

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

ps:
	docker compose ps

logs:
	docker compose logs -f

config:
	docker compose config

backup:
	./scripts/backup.sh

list-backups:
	@echo ""
	@echo "Available backups:"
	@echo ""
	@ls -lh backups/postgres/*.sql 2>/dev/null || echo "No backups found."
	@echo ""
