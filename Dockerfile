FROM ubuntu:latest


RUN apt update && apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

RUN apt install -y docker-ce docker-ce-cli containerd.io && systemctl start docker

RUN docker run -d --restart=always -v /etc/alist:/opt/alist/data -p 5244:1234 -e PUID=0 -e PGID=0 -e UMASK=022 --name="alist" xhofe/alist:latest

EXPOSE 1234
