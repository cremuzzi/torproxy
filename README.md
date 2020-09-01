# How to use this image

## Start a torproxy instance

```sh
docker run -d --name torproxy -p 9050:9050 cremuzzi/torproxy
```

then you can monitor your tor proxy instance with Nyx:

```sh
docker exec -i -t torproxy nyx
```
