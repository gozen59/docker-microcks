# Microcks Application (Under Docker)

Microcks mocking eco-system running under docker.

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