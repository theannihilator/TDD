FROM node:22-alpine
COPY ./modmailbot /bot
WORKDIR /bot
RUN apk add git sqlite
RUN npm ci 
CMD npm start
