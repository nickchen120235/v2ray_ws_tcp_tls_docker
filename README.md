# v2ray WebSocket + TCP + TLS Docker
## Before building
- Open port **443** on your host machine
- Set correct hostname in virtualhost.conf
- Copy the following files to the current directory
```
- config.json for v2ray
- fullchain.pem or equivalent certificate file
- privkey.pem or equivalent private key file
```
## Build the image
```
docker build --no-cache -t v2ray .
```
## Start the container
```
docker run -d -p 443:443 --name v2ray v2ray
```