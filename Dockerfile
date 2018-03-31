FROM python:3.6-alpine

MAINTAINER Maciej Strömich

RUN mkdir /app
WORKDIR /app

RUN apk add --update --no-cache g++ gcc libxslt-dev libxml2-dev
ADD requirements.txt .
RUN pip install -r requirements.txt
