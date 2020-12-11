FROM node:alpine

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
    adduser -D user1 && \
    chown -R user1 /usr/src/app

USER user1
    
CMD [ "npm", "start" ]
