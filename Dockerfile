FROM node:16.14.2-alpine3.14 AS build

RUN mkdir /app

COPY ./package.json /app
COPY ./yarn.lock /app

WORKDIR /app

RUN yarn install

COPY . .

RUN yarn run build

FROM nginx:1.21-alpine

COPY --from=build /app/dist /usr/share/nginx/html
