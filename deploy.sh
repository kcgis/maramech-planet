#!/bin/bash

./envs.sh

if [ "$1" == "start" ]; then
    docker compose -f compose/web.base.yml up -d --force-recreate
    docker compose -f compose/traefik.yml up -d --force-recreate
elif [ "$1" == "stop" ]; then
    docker compose -f compose/web.base.yml down --remove-orphans
    docker compose -f compose/traefik.yml down --remove-orphans
fi
