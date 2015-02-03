# postgresdev - Postgres 9.4.0 Base

## Summary - Basic Postgres 9.4.0 environment

Download the 9.4.0 source, compile it, and install into /usr/local/pgsql/bin. The default
mount point for the database is /var/local/pgsql/data. This doesn't start the database, only
prepares the environment (including a postgres user and group).

## Dependencies
* tacodata/pythondev - basic environemt

## EXPOSE

* 5000 (inherited from tacodata/pythondev)
* 5432 (postgres connection port)

## VOLUME

* /var/local/pgsql/data - mount point for database, if omitted then the built in mount is used.

## Run example:
```
docker run -p 5432:5432 -it --rm tacodata/postgresdev /bin/bash
```

You will need to start postgres as well.

