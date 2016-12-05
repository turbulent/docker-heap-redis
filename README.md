# heap-redis docker image.

Dockerized redis daemon.

## Usage

```
$ docker run -d -p 6379:6379 heap-redis 
```

You can pass envrionment variables when launching the container:
```
$ docker run -d -e "VAR_REDIS_DATABASES=8" -p 6379:6379 heap-redis
```

## Environment variables

This image uses environment variables to override common configuration options.

The following environment variables are available (listed below with default values):

```
VAR_REDIS_DATABASES="16"
VAR_REDIS_DBFILENAME="dump.rdb"
VAR_REDIS_SAVE="save 900 1|save 300 10|save 60 10000"
```
