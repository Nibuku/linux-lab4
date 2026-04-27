#!/usr/bin/env bash
set -euo pipefail
if curl -s -f -o /dev/null http://127.0.0.1:8000/; then
    echo "Сервис доступен"
    exit 0
else
    echo "Сервис не доступен"
    exit 1
fi
