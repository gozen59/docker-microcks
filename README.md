# Microcks Application (Under Docker)

Microcks mocking eco-system running under docker (https://github.com/microcks/microcks).

Composed of : 
- Microcks App
- Keycloak (Auth)
- MongoDB
- Postman runtime

## Requirements

- You must have Traefik v3 container runnning. 

## Access
- http://microcks.localhost

## Start the container

```bash
make start
```

## Stop the container

```bash
make stop
```

## Stops and removes the container

```bash
make down
```