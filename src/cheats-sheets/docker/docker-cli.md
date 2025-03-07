#docker

## Remove all images

```bash
docker rmi $(docker image ls -aq) -f
```

## Force build

```bash
docker-compose up -d --build
```

## Show Docker in Portainer (Remote Access)

In Remote Docker:

```bash
sudo mkdir -p /etc/systemd/system/docker.service.d
```

Now navigate to the `docker.service.d`

```bash
cd /etc/systemd/system/docker.service.d
```

Create new file `remote-api.config`

```bash
sudo nano remote-api.conf
```

Paste the code bellow and save

```bash
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H tcp://0.0.0.0:2375 -H unix://var/run/docker.sock
```

Reload and Restart Docker daemon

```bash
sudo systemctl daemon-reload
sudo systemctl restart docker
```