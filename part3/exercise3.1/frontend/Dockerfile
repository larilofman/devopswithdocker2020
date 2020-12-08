FROM ubuntu:16.04

ENV API_URL=http://localhost/api
WORKDIR /usr/src/app

COPY . .

RUN apt-get update && \
apt-get install -y curl && \
curl -sL https://deb.nodesource.com/setup_10.x | bash && \
apt-get install -y nodejs && \
npm install && \
apt-get purge -y --auto-remove curl && \
rm -rf /var/lib/apt/lists/*

CMD [ "npm", "start" ]
