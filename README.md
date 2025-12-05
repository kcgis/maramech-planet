# Kendall County OSM Infrastructure Deployment - maramech

This repository contains the deployment configuration and scripts for the OpenStreetMap (OSM) infrastructure for Kendall County.

## Initial Setup

### 1. Create Docker Network

```sh
docker network create --driver bridge local_network
```

## Export secret values 

```sh
export POSTGRES_PASSWORD=supersecret_need_change_later
export RAILS_MASTER_KEY="xzy"
export SECRET_KEY_BASE="xyz.."
export RAILS_CREDENTIALS_YML_ENC="xyz"
```
