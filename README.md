# Alpine :: Binance Smart Chain
![size](https://img.shields.io/docker/image-size/11notes/rsyslog/8.2306?color=0eb305) ![version](https://img.shields.io/docker/v/11notes/rsyslog?color=eb7a09) ![pulls](https://img.shields.io/docker/pulls/11notes/rsyslog?color=2b75d6) ![activity](https://img.shields.io/github/commit-activity/m/11notes/docker-rsyslog?color=c91cb8) ![commit-last](https://img.shields.io/github/last-commit/11notes/docker-rsyslog?color=c91cb8)

Run rsyslog based on Alpine Linux. Small, lightweight, secure and fast 🏔️

The default configuration will redirect all rsyslog to telegraf on localhost:6514

## Volumes
* **/rsyslog/etc** - Directory of configuration file

## Run
```shell
docker run --name rsyslog \
  -v ../etc:/rsyslog/etc \
  -d 11notes/rsyslog:[tag]
```

## Defaults
| Parameter | Value | Description |
| --- | --- | --- |
| `user` | docker | user docker |
| `uid` | 1000 | user id 1000 |
| `gid` | 1000 | group id 1000 |
| `home` | /rsyslog | home directory of user docker |

## Parent image
* [11notes/alpine:stable](https://github.com/11notes/docker-alpine)

## Built with and thanks to
* [Rsyslog](https://www.rsyslog.com)
* [Alpine Linux](https://alpinelinux.org)

## Tips
* Only use rootless container runtime (podman, rootless docker)
* Don't bind to ports < 1024 (requires root), use NAT/reverse proxy (haproxy, traefik, nginx)