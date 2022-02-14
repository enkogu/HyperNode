# HyperNode

## Requirements

`Ubuntu-20.04` with the following packages installed:

* `git`
* `docker.io`
* `docker-compose`

```console
apt update
apt install -u git docker.io docker-compose
```

## Run

Before the first run, you need to perform some preparatory operations. All of them are collected in the file `setup.sh`:

```console
./dist/setup.sh
```

The actual run has to be done with `docker-compose`:

```console
docker-compose up -d
```

## Show logs

You can access logs of a particular container with `docker-compose logs <container name>`.

Use `./dist/tmux.sh` to run a pre configured [tmux](https://tmuxguide.readthedocs.io/en/latest/tmux/tmux.html#basic) with many tabs with all logs displayed in real time.


## Web interface to manage containers

```console
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    portainer/portainer-ce:2.11.0
```

Connect to the host on https port 9443 (self-signer certificate) to set admin password


## Web interface to monitor logs

```console
docker run --name dozzle -d --volume=/var/run/docker.sock:/var/run/docker.sock -p 8888:8080 amir20/dozzle:latest
```

Connect to the host on http port 8080 to see live containers logs.
