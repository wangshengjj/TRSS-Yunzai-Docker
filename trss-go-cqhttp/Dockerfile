FROM ubuntu:20.04
MAINTAINER wangshengjj 2644373507@qq.com
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
WORKDIR /data
COPY go-cqhttp_1.1.0_linux_amd64.deb /
COPY gocq-start.sh /
RUN cd / && dpkg -i /go-cqhttp_1.1.0_linux_amd64.deb 
VOLUME /data
CMD /bin/bash -c "/gocq-start.sh"
