FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
ENV FRONT_URL=http://localhost
CMD [ "npm", "start" ]
