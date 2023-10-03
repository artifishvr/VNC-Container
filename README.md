## a silly experiment
[![Deploy Docker Image](https://github.com/artificialbutter/VNC-Container/actions/workflows/deploy-image.yml/badge.svg)](https://github.com/artificialbutter/VNC-Container/actions/workflows/deploy-image.yml)
### uses linuxserver's docker-webtop as a base image, modified for my use

example run command:

```
docker run -d --name=vnccontainer -e PUID=1000 -e PGID=1000 -e TZ=Etc/UTC -p 3000:3000 -p 3001:3001 -v C:\Users\Artificial\Desktop\config:/config --restart unless-stopped ghcr.io/artificialbutter/vnc-container:latest
```