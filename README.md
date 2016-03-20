# Docker Plex Media Server - With Remote Share Support!

> This image is based on [limetech/plex](https://hub.docker.com/r/limetech/plex/) but adjusted to support a remote share within Plex!

This is a Dockerfile to set up "Plex Media Server" - (https://plex.tv/)
The image provides an additional way to connect media to Plex by adding one remote share.


Build from docker file

```
git clone https://github.com/colinator/docker-plexmediaserver.git
cd docker-plexmediaserver
docker build -t plexmediaserver .
```

docker run -d --net=host --privileged=true -h *your_host_name* -v /*your_config_location*:/config  -v /*your_videos_location*:/data -p 32400:32400 -e REMOTE_LOCATION="//sharename/video" -e SHARE_USERNAME=*username* -e SHARE_PASSWORD=*password* colinerd/plexmediaserver

## Installation
"/remotemnt" is the folder where the share will be mounted inside the container.

REMOTE_LOCATION - specify remote location like this "//remoteserver/media"

SHARE_USERNAME - specify username required to access share, use "guest" if not required

SHARE_PASSWORD - specify password, leave empty if using guest, do specify when running!

32400 is the default port used for PLEX. The best thing is to run this container in the "HOST" network mode.
To access the Plex GUI, open the webbrowser and go to http://serverip:32400/web/index.html