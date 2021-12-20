FROM node:12.19.0-alpine3.9 AS development

WORKDIR /app
ADD package.json /app/package.json
RUN npm config set registry http://registry.npmjs.org
RUN npm install
ADD . /app
EXPOSE 3000
CMD ["npm", "run", "start"]