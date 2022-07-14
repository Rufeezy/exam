FROM node:alpine

WORKDIR /exam

COPY index.js package.json package-lock.json ./

RUN npm install

CMD [ "node", "index.js" ]
