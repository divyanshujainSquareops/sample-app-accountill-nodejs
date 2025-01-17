FROM node:14-alpine AS builder
ENV NODE_ENV production

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json .
RUN npm install
COPY . .

RUN npm install && npm install nodemon --save-dev

EXPOSE 5000
CMD ["npm", "start"]
