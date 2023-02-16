# Mindustry Server

Run mindustry server with docker. This repository checks the latest upstream releases daily and builds docker images accordingly.

Run directly:

```shell
docker run -ti -p 6567:6567/tcp -p 6567:6567/udp ricky9w/mindustry-server
```

Run with docker-compose:

```yaml
---
services:
  mindustry:
    image: ricky9w/mindustry
    
    # enable tty and stdin to make `docker attach` work
    tty: true
    stdin_open: true

    # trust no one :)
    read_only: true
    cap_drop:
      - ALL

    ports:
      - "6567:6567"
    restart: always

    # map config to host machine
    volumes:
      - ./config:/config
```

DockerHub:

[ricky9w/mindustry-server - Docker Image | Docker Hub](https://hub.docker.com/r/ricky9w/mindustry-server)

Refer:

[Anuken/Mindustry: The automation tower defense RTS (github.com)](https://github.com/Anuken/Mindustry)

[frankbaele/mindustry: Mindustry server docker (github.com)](
