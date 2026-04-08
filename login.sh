#!/bin/bash

# Load config
source "$(dirname "$0")/config.sh"

sleep 5

for i in {1..5}
do
    echo "Attempt $i..."

    RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" -X POST "$URL" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -d "$DATA")

    if [ "$RESPONSE" = "200" ] || [ "$RESPONSE" = "302" ]; then
        echo "Login success"
        exit 0
    fi

    sleep 3
done

echo "Login failed"
exit 1