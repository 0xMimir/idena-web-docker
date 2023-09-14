# Idena web docker

Docker image for [idena-web](https://github.com/idena-network/idena-web), 

### Build

Build the docker image with:
```sh
docker build -t idena .
```

### Run

Run the image with:
```sh
docker run -d -p 7000:80 idena
```

After than you can open the ui on [localhost](http://localhost:7000/)


### Problems

There are currently few problems with docker image, first is image size, currently size of docker image is 1.8G
```sh
docker inspect -f {{ .Size }} idena | numfmt --to=si
1.8G
```

This is due to being unable do statically build idena web, and then hosting using `ngnix`, so all node modules are contained in image.

Second problem is being unable to preset node url and api key, this can be changed in UI, but it would still be nice to be able to pass env arg with your node and api key.