FROM ghcr.io/mback2k/docker-ubuntu/focal:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bacula-sd && \
    apt-get clean

EXPOSE 9103

VOLUME /run/bacula
VOLUME /var/lib/bacula
VOLUME /var/backups

ADD docker-entrypoint.d/ /run/docker-entrypoint.d/
ENV DOCKER_ENV_HIDEVARS BACULA_STORAGE_PASS

CMD ["/usr/sbin/bacula-sd", "-f"]
