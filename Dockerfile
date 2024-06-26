# syntax=docker/dockerfile:1

FROM golang:1.19

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

RUN go build -o app .

COPY ./public public