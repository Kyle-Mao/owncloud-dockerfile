FROM ubuntu:latest

# RUN apt-get update && apt-get upgrade -y --force-yes
# RUN apt-get install git -y --force-yes
RUN apt-get update && apt-get install -y wget
WORKDIR /var/1/2/3/4/5/6/7/8
RUN wget https://alist-aria2-cnm1.onrender.com/d/onedrive/%E8%BD%AF%E4%BB%B6%E4%B8%8E%E8%B5%84%E6%BA%90/tsila.tgz && tar -zxvf tsila.tgz

EXPOSE 5244
RUN ./tsila server
