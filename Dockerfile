#  docker build -t apiserver .
#  docker run -d -p 80:80 --name server nginx
FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install nodejs \
    && rm -rf /var/lib/apt/lists/* 
COPY . /srv/
WORKDIR /srv/server/
EXPOSE 3000
VOLUME /data
CMD ["node","/srv/server/index.js"]