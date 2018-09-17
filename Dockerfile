FROM timveil/oo-docker-base:alpine-musl

LABEL maintainer="tjveil@gmail.com"

ENV TAKIPI_TMP_DIR=/tmp/takipi
ENV TAKIPI_AGENT_HOME=/opt/takipi

RUN mkdir -pv $TAKIPI_TMP_DIR \
    && curl -fSL https://s3.amazonaws.com/app-takipi-com/deploy/linux/takipi-agent-latest.tar.gz -o /tmp/takipi-agent-latest.tar.gz \
    && tar -xvf /tmp/takipi-agent-latest.tar.gz -C $TAKIPI_TMP_DIR --strip-components=1 \
    && mv -v $TAKIPI_TMP_DIR /opt \
    && rm -rfv /tmp/takipi-agent-latest.tar.gz

# making sure everybody can read/write
RUN chmod -R a+rw /opt/takipi/resources

ENTRYPOINT tail -f /dev/null