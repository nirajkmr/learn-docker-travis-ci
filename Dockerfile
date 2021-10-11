FROM node

RUN mkdir /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

WORKDIR /usr/src/app

COPY package*.json /usr/src/app

RUN npm install

COPY . .

EXPOSE 4000
CMD [ "npm", "start"]
