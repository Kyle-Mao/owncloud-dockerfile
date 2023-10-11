FROM ubuntu:latest
ENV PORT=8192

RUN apt update && apt install -y wget
RUN wget https://github.com/alist-org/alist/releases/download/v3.28.0/alist-linux-musl-amd64.tar.gz && tar -zxvf alist-linux-musl-amd64.tar.gz

EXPOSE 8192

RUN ./alist server

