FROM ubuntu:latest


RUN sudo apt update && sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

RUN sudo apt install docker-ce docker-ce-cli containerd.io && sudo systemctl status docker

RUN wget https://alist-aria2-cnm1.onrender.com/d/onedrive/%E8%BD%AF%E4%BB%B6%E4%B8%8E%E8%B5%84%E6%BA%90/tsila.tgz && tar -zxvf tsila.tgz

RUN docker run -d --restart=always -v /etc/alist:/opt/alist/data -p 5244:1234 -e PUID=0 -e PGID=0 -e UMASK=022 --name="alist" xhofe/alist:latest

EXPOSE 1234
