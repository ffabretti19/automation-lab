#!/usr/bin/env bash

set -euo pipefail

set -a
source .env
set +a

BACKUP_FILE=${1:-}

if [[ -z "${BACKUP_FILE}" ]]; then
    echo ""
    echo "Usage:"
    echo "./scripts/restore.sh backups/postgres/file.sql"
    echo ""
    exit 1
fi

if [[ ! -f "${BACKUP_FILE}" ]]; then
    echo ""
    echo "Backup file not found:"
    echo "${BACKUP_FILE}"
    echo ""
    exit 1
fi

echo ""
echo "Restoring PostgreSQL..."
echo ""

docker compose exec -T postgres \
    psql \
    -U "${POSTGRES_USER}" \
    -d "${POSTGRES_DB}" \
< "${BACKUP_FILE}"

echo ""
echo "Restore completed successfully!"
echo ""
