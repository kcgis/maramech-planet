#!/bin/bash
mkdir -p envs/

# TODO: check other way to set the environment variables

BASE_DOMAIN=maramech.kendallcountyil.gov

############################## DB ##############################
echo "POSTGRES_HOST=db
POSTGRES_DB=openstreetmap
POSTGRES_USER=postgres
POSTGRES_PASSWORD=${POSTGRES_PASSWORD}" > envs/.env.db

############################## Web API ##############################
echo "SERVER_URL=${BASE_DOMAIN}
SERVER_PROTOCOL=https
MAILER_ADDRESS=none
MAILER_DOMAIN=@none.org
MAILER_USERNAME=none
MAILER_PASSWORD=none
MAILER_FROM=no-reply@none.org
MAILER_PORT=587
NOMINATIM_URL=none
OPENSTREETMAP_memcache_servers=memcache:11211
OPENSTREETMAP_id_key=
OAUTH_CLIENT_ID=
OAUTH_KEY=
ORGANIZATION_NAME=Maramech" > envs/.env.web
