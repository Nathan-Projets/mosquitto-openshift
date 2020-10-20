FROM eclipse-mosquitto:latest
MAINTAINER Tobias Brunner <tobias@tobru.ch>

ADD fix-permissions.sh /usr/local/bin
RUN chown -R mosquitto:root /mosquitto && \
    fix-permissions.sh /mosquitto/data && \
    fix-permissions.sh /mosquitto/log

USER mosquitto
