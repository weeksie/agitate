FROM ubuntu
RUN apt-get update && \
    apt-get install -y libssl1.0.0 postgresql-client && \
    apt-get autoclean
RUN mkdir -p /app
ARG VERSION=0.0.1
COPY rel/agitate/releases/${VERSION}/agitate.tar.gz /app/agitate.tar.gz
WORKDIR /app
RUN tar -xvzf agitate.tar.gz
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
CMD ["/app/agitate/bin/agitate", "foreground"]
