FROM ubuntu:16.04
MAINTAINER TingSong-Syu <xts@xts.so>

COPY ./ /tmp/install/

RUN cd /tmp/install && ./use-aliyun-apt && \
    ./preinstall && ./php && ./tideways && \
    ./msgpack && ./hiredis && ./swoole && ./phpredis && \
    ./rabbitmq-c && ./amqp

