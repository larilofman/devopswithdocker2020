FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5000
ENV API_URL=http://localhost:8000
CMD [ "npm", "start" ]
