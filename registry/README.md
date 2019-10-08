## How to Deploy

When generating a certificate, use the domain or host name for which this certificate should be valid in the 'Common Name' field. The `my-registry.local` domain is used in this example, change it to your domain name in further instructions.

```sh
docker volume create --name=registry-storage
docker volume create --name=registry-config
docker run --rm -itv registry-config:/v -w /v alpine sh -c "apk update && apk add vim openssl && openssl req -newkey rsa:4096 -nodes -sha256 -keyout self-signed.key -x509 -days 365 -out self-signed.crt && wget https://raw.githubusercontent.com/Himura2la/docker-compose/master/registry/config.yml -O config.yml && vi config.yml && cat self-signed.crt"
docker-compose up --build -d
docker logs registry -f
```

## How to Configure

### Linux

```sh
sudo mkdir -p "/etc/docker/certs.d/my-registry.local/"
sudo tee "/etc/docker/certs.d/my-registry.local/self-signed.crt" <<EOF
-----BEGIN CERTIFICATE-----

-----END CERTIFICATE-----
EOF
```

### Windows

1. Create a file `registry.crt` with the certificate contents from the [Linux](#linux) section.
2. Install the certificate into the **Trusted Root CA** store.
