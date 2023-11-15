FROM node:7.8.0
ADD . /opt
WORKDIR /opt
RUN npm install
ENTRYPOINT npm run start