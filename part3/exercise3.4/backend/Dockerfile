FROM ubuntu:16.04

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    npm install && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m user1 && \
    chown -R user1 /usr/src/app

USER user1
    
CMD [ "npm", "start" ]
