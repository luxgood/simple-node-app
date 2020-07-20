FROM node:current-alpine3.12
RUN apk update
RUN apk add git
#COPY . /app
#WORKDIR /app
#ENTRYPOINT node /app/server.js
EXPOSE 8081