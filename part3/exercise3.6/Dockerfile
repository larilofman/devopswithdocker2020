FROM node:alpine as builder

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM node:alpine

COPY --from=builder /usr/src/app/dist /dist
RUN adduser -D user1 && npm install -g serve
    
USER user1

CMD [ "serve", "-s", "-l", "5000", "dist" ]
