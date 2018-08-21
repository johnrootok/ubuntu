FROM ubuntu

MAINTAINER johnroot hnesd@qq.com
RUN apt-get update
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get install cgdb -y
RUN apt-get install net-tools -y
RUN mkdir  /opt/run

RUN echo "root:password" | chpasswd
WORKDIR /opt/run

CMD ulimit -c unlimited && pwd && chmod 777 run.sh && ./run.sh

