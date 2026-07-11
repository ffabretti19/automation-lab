#!/usr/bin/env bash

set -euo pipefail

set -a
source .env
set +a

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_DIR="backups/postgres"

mkdir -p "${BACKUP_DIR}"

echo ""
echo "Starting PostgreSQL backup..."
echo ""

docker compose exec -T postgres \
    pg_dump \
    -U "${POSTGRES_USER}" \
    -d "${POSTGRES_DB}" \
> "${BACKUP_DIR}/${TIMESTAMP}.sql"

echo ""
echo "Backup completed successfully!"
echo ""
echo "File:"
echo "  ${BACKUP_DIR}/${TIMESTAMP}.sql"
echo ""
