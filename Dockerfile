#Base Image node:12.18.4-alpine
FROM node:12.18.4-alpine


#Set working directory to /app
WORKDIR /app

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz && tar xzvf docker-17.04.0-ce.tgz && mv docker/docker /usr/local/bin && rm -r docker docker-17.04.0-ce.tgz
#Set PATH /app/node_modules/.bin
ENV PATH /app/node_modules/.bin:$PATH


#Copy package.json in the image
COPY package.json ./


#Run npm install command
RUN npm install


#Copy the app
COPY . ./

EXPOSE 3000

#Start the app
CMD ["node", "./src/server.js"]
