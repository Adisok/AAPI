# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY ./start.sh /start.sh
RUN sed -i 's/\r$//g' /start.sh
RUN chmod +x /start.sh

COPY .pre-commit-config.yaml .
RUN git init . && pre-commit install-hooks

COPY . /code/
