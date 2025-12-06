
# Maramech OSM Infrastructure Deployment

This repository contains the configuration and scripts to deploy the OpenStreetMap (OSM) infrastructure for Kendall County (Maramech).

---

## Overview

This project uses Docker Compose to orchestrate the main OSM services, including the database, web backend, cache, cgimap, and Traefik as a reverse proxy.

## Prerequisites

- Docker and Docker Compose installed
- Terminal access

## Initial Setup

1. **Create the Docker network:**
	```sh
	docker network create --driver bridge local_network
	```

2. **Clone the repository and enter the directory:**
	```sh
	git clone <repo-url>
	cd maramech-planet
	```

## Environment Variables

Before deploying, export the required sensitive variables:

```sh
export POSTGRES_PASSWORD=supersecret_need_change_later
export RAILS_MASTER_KEY="xzy"
export SECRET_KEY_BASE="xyz.."
export RAILS_CREDENTIALS_YML_ENC="xyz"
export POSTGRES_PASSWORD="1234"

```

These variables will be used by the scripts to generate the `.env` files required by the services.

## Deployment

To start all services:

```sh
./deploy.sh start
```

To stop all services:

```sh
./deploy.sh stop
```

## Included Services

- **db**: PostgreSQL for OSM
- **web**: OSM web backend
- **memcache**: Web cache
- **cgimap**: CGI server for the API
- **traefik**: Reverse proxy and certificate management

The configuration for each service is found in `compose/web.base.yml` and `compose/traefik.yml`.

## User Management

To approve or manage users, access the Rails console inside the web container:

```sh
docker exec -it production_osm_web bash
bundle exec rails console
```

Example to activate a user:

```rb
user = User.find_by(:display_name => "Rub21")
user.activate!
# user.roles.create(:role => "moderator", :granter_id => user.id)
# user.roles.create(:role => "administrator", :granter_id => user.id)
# quit
```

More info: [Managing users in OSM](https://github.com/openstreetmap/openstreetmap-website/blob/master/CONFIGURE.md#managing-users-via-rails-console)
