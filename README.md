# Django Girls Tutorial

https://tutorial.djangogirls.org/en/

## Build image
```bash
IMAGE_NAME=django_tutorial
docker build -t $IMAGE_NAME .
```

## Login container
```bash
docker run -p 8000:8000 -v $PWD:/usr/src/app -it $IMAGE_NAME bash
```

## Browsing
```bash
open http://127.0.0.1:8000/

# on firefox
# open -a Firefox http://127.0.0.1:8000/
```
