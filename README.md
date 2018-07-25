# OverOps Docker Image for Agent as "sidecar"

__*Please note, this is not an official OverOps repository or Docker image*__

This image contains an [OverOps](http://www.overops.com) Agent only.  This is useful for "sidecar" type deployments where the Agent directory `/opt/takipi` can be mounted as Docker Volume and shared with other containers.  More info on this image can be found on [DockerHub](https://hub.docker.com/r/timveil/oo-docker-agent-sidecar/).


## Examples

#### Building the Image

```bash
docker build --no-cache -t timveil/oo-docker-agent-sidecar:latest .
```

#### Publishing the Image

```bash
docker push timveil/oo-docker-agent-sidecar:latest
```

#### Running the Image
 
```bash
docker run -it timveil/oo-docker-agent-sidecar
```