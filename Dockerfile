FROM python:3.6
USER root

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y vim less

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

