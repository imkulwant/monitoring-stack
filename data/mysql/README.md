# MySQL

Platform MySQL service.

## Persistence

- Data stored in `mysql_data` Docker volume
- Survives container restarts

## Initialization

- SQL scripts in `init/` run only on first startup

## Configuration

- Server config in `my.cnf`

## Backups

- Logical backups via `backup.sh`
- Output stored in `data/backups/mysql`
