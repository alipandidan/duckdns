# Duck DNS Docker Image
Duck DNS Docker image

## Usage

### Docker

```bash
docker run --env TOKEN=<DUCNDNS_TOKEN> --env DOMAIN=<DUCKDNS_DOMAIN> pandidan/duckdns
```

### docker-compose

```yaml
version: '3'
services:
  duckdns:
    container_name: duckdns
    image: pandidan/duckdns
    environment:
      - TOKEN=<DUCKDNS_TOKEN>
      - DOMAIN=<DUCKDNS_DOMAIN>
    restart: always
```

### Bash (without Docker)

```bash
TOKEN=579e702e-f9c2-4b95-a5dd-3ec4a980bbdc  DOMAIN=hejmo INTERVAL=600 ./duckdns
```

### Environment Variables

|Name|Required|Description|
|---|---|---|
|`TOKEN`|Yes|Duck DNS Token|
|`DOMAIN`|Yes|Duck DNS Domain|
|`INTERVAL`|No |Interval in seconds to update the DNS record (Default: 600, Must provided if using bash alone)|
