FROM centos:7
RUN mkdir -p /usr/chenyg/apiserver
ENV TIME_ZONE=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone
WORKDIR /usr/chenyg/apiserver
COPY . /usr/chenyg/apiserver
RUN chmod u+x /usr/chenyg/apiserver/start.sh
CMD /usr/chenyg/apiserver/start.sh
