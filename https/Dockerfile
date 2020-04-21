# specify the node base image with your desired version node:<version>
FROM node:12

ADD domainrouter.js
ADD package.json

RUN npm install

EXPOSE 443 3231 80

CMD ["node", "domainrouter.js"]