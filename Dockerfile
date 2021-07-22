FROM python:3.7-alpine
MAINTAINER Johan Vacca ES

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user #Usuario que solo ejecutara procesos desde el proyecto, por seguridad
USER user