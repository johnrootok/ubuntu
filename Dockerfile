FROM ubuntu

MAINTAINER johnroot hnesd@qq.com
RUN apt-get update
ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install cgdb -y
RUN apt-get install net-tools -y
RUN mkdir  /opt/run

RUN echo "root:password" | chpasswd
WORKDIR /opt/run

CMD ulimit -c unlimited && pwd && chmod 777 run.sh && ./run.sh

