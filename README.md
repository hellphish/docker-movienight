# docker-movienight
Docker wrapper around [MovieNight](https://github.com/zorchenhimer/MovieNight)
## Usage
```
docker run \
  -e STREAM_KEY="PASSWORD_FOR_OBS" \
  -e ADMIN_PASSWORD="PASSWORD_FOR_ADMIN_INTERFACE" \
  -e PUID="1000" \
  -e PGID="1000" \
  -p 8089:8089 \
  -p 1935:1935 \
  --name movienight \
  --restart unless-stopped \
  spencerhughes/movienight:latest
```
## Environment Variables
| Variable Name | Description |
| --- | --- |
| STREAM\_KEY | Sets the stream key for OBS |
| ADMIN\_PASSWORD | Sets the admin password for the MovieNight web interface |
| ACCESS\_MODE | Sets the room access level ("open","pin","request") |
| ACCESS\_PIN | Sets the room PIN for access level = pin |
| PUID | Sets the UID to execute MovieNight as |
| PGID | Sets the GID to execute MovieNight as |

## Ports
| Port | Description |
| --- | --- |
| 8089 | HTTP port for MovieNight frontend |
| 1935 | RTMP port for OBS stream |
