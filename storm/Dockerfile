FROM flokkr/base:21
ADD url ./
RUN adduser -h /opt/ -s /bin/bash -G flokkr -D storm && chown storm /opt
USER storm
RUN sudo apk add --update --no-cache python
RUN wget `cat url` -O storm.tar.gz && tar zxf storm.tar.gz && rm storm.tar.gz && mv apache-storm* storm
WORKDIR /opt/storm
ENV CONF_DIR=/opt/storm/conf PATH=$PATH:/opt/storm/bin
ADD worker.xml /opt/storm/log4j2/
ADD cluster.xml /opt/storm/log4j2/
