FROM docker:latest

RUN docker run -itd --privileged=true --restart=always -v /etc/alist:/opt/alist/data -p 5244:1234 -e PUID=0 -e PGID=0 -e UMASK=022 --name="alist" xhofe/alist:latest

EXPOSE 1234
