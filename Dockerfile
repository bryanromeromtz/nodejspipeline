FROM node:12
RUN apt-get update && apt-get install -y sudo
RUN sudo chown -R 117:126 "/.npm"
WORKDIR /appnodejs
ADD . /appnodejs
RUN npm install
EXPOSE 3000
CMD npm start
# FROM node:latest
# RUN apt-get update && apt-get install -y sudo
# RUN sudo chown -R 117:126 "/.npm"
# WORKDIR /app
# COPY . /app
# RUN npm install
# EXPOSE 3000
# CMD [ "npm", "start" ]
