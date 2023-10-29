FROM node:14
## Create app directory
WORKDIR /usr/src/app
## Install app dependencies
## A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json ./
run npm install @types/lodash
run npm install typescript@latest
RUN npm ci 
## Bundle app source
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "prod" ]