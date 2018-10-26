# [GitLab Runner in Docker](https://docs.gitlab.com/runner/install/docker.html)
## How to use

```
host:~$ docker volume create --name=gitlab-runner-config
host:~$ docker-compose up -d
host:~$ docker container exec -it gitlab-runner /bin/bash
container:/# gitlab-runner register
```
