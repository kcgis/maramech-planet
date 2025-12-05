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
NOMINATIM_URL=nominatim.openstreetmap.org
OVERPASS_URL=overpass-api.openstreetmap.org
OPENSTREETMAP_memcache_servers=production_osm_memcache:11211
OPENSTREETMAP_id_key=
OAUTH_CLIENT_ID=
OAUTH_KEY=
ORGANIZATION_NAME=Maramech
WEBSITE_STATUS=online
API_TIMEOUT=30
WEB_TIMEOUT=30
RAILS_CREDENTIALS_YML_ENC=${RAILS_CREDENTIALS_YML_ENC}
RAILS_MASTER_KEY=${RAILS_MASTER_KEY}
RAILS_ENV=production
RAILS_LOG_LEVEL=warn
RAILS_STORAGE_SERVICE=s3
RAILS_STORAGE_REGION=us-east-1
RAILS_STORAGE_BUCKET=maramech-website-production
EXTERNAL_CGIMAP=true
CGIMAP_URL=production-cgimap-service
CGIMAP_PORT=80
PASSENGER_MAX_POOL_SIZE=6" > envs/.env.web