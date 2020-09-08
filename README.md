# Django Girls Tutorial

https://tutorial.djangogirls.org/en/

## Build image
```bash
IMAGE_NAME=django_tutorial
docker build -t $IMAGE_NAME .
```

## Login container
```bash
CONTAINER_ID=$(docker ps -q --filter ancestor=${IMAGE_NAME}); echo $CONTAINER_ID
docker exec -it $CONTAINER_ID bash
```

## Browsing
```bash
open http://127.0.0.1:8000/

# on firefox
# open -a Firefox http://127.0.0.1:8000/
```
