# Data Layer

This folder contains **stateful platform services**.

## Services

- [MySQL 8](mysql/README.md)
- [Redis 7](redis/README.md)

## Principles

- Long-lived containers
- Persistent volumes
- Applications never manage these services

## Networking

All services are reachable via Docker DNS on the `platform` network:

- mysql:3306
- redis:6379
