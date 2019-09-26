# [GitLab Runner in Docker](https://docs.gitlab.com/runner/install/docker.html)
## How to use

```
host:~$ docker volume create --name=gitlab-runner-config
host:~$ docker-compose up --build -d
host:~$ docker exec -it gitlab-runner bash
container:/# gitlab-runner register
```
