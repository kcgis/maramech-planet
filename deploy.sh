#!/bin/bash

export ENVIRONMENT=${ENVIRONMENT:-development}
export POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-1234}

# Set env vars
./envs.sh

# Select compose file(s) based on environment
if [ "$ENVIRONMENT" == "production" ]; then
    COMPOSE_FILES="-f compose/web.base.yml -f compose/web.production.yml"
else
    COMPOSE_FILES="-f compose/web.yml"
fi

if [ "$1" == "start" ]; then
    echo "Starting containers in $ENVIRONMENT mode..."
    echo "Using compose files: $COMPOSE_FILES"
    docker compose $COMPOSE_FILES up --force-recreate -d
    
    echo "Containers started successfully."

elif [ "$1" == "stop" ]; then
    echo "Stopping containers in $ENVIRONMENT mode..."
    echo "Using compose files: $COMPOSE_FILES"
    docker compose $COMPOSE_FILES down
    echo "Containers stopped successfully."
fi

