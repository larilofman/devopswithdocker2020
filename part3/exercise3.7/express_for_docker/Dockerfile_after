FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN adduser -D user1 && npm install
COPY . .
EXPOSE 3001
USER user1

CMD [ "npm", "start" ]
