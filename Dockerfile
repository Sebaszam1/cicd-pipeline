FROM node:7.8.0
RUN pwd 
RUN ls
ADD $PWD/* /opt
WORKDIR /opt
RUN npm install
ENTRYPOINT npm run start