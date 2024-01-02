# anki-syncserver
Anki Sync Server Container Image Build

## Build
```
make build
```

## Configuration
- You can set the following environment variables as noted in [Sync Server - Anki Manual](https://docs.ankiweb.net/sync-server.html)
```
# Required
SYNC_USER1 = 'username:password' This must be set otherwise container will not start

# Optional
SYNC_HOST = Defaults to '0.0.0.0'
SYNC_PORT = Defaults to '8080'
SYNC_BASE = Defaults to '/data'
MAX_SYNC_PAYLOAD_MEGS = Defaults to '100'
```

## Deploy using docker-compose
```
docker-compose up
```