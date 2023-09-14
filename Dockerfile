FROM node:latest as builder

WORKDIR /root/
RUN git clone https://github.com/idena-network/idena-web build
WORKDIR /root/build

ENV NODE_OPTIONS=--openssl-legacy-provider
ENV PORT=80

RUN npm install --force 
RUN npm run build

EXPOSE 80/tcp

ENTRYPOINT ["npm", "run", "start"]