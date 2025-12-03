# Kendall County OSM Infrastructure Deployment

This repository contains the deployment configuration and scripts for the OpenStreetMap (OSM) infrastructure for Kendall County.

## Initial Setup

### 1. Create Docker Network

```sh
docker network create --driver bridge local_network
```

## Export secret values 

```
export POSTGRES_PASSWORD=supersecret_need_change_later

