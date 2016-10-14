FROM debian:jessie

RUN apt-get update && apt-get install -y \
  cron \
  && rm -rf /var/lib/apt/lists/*

COPY ./docker-entrypoint.sh /
COPY ./run-cron.sh /
COPY ./docker-entrypoint.d/* /docker-entrypoint.d/

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD /run-cron.sh
