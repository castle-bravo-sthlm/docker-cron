FROM debian:jessie

RUN apt-get update && apt-get install -y \
  cron \
  && rm -rf /var/lib/apt/lists/*

COPY ./docker-entrypoint.sh /
COPY ./run-cron.sh /

# When used as base for another Dockerfile this will be run directly after FROM
ONBUILD COPY /cronjobs /tmp/cronjobs
ONBUILD COPY /scripts /scripts

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD /run-cron.sh
