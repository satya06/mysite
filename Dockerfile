FROM ubuntu:latest

WORKDIR /mysite

RUN apt-get update && apt-get install -y nodejs npm

COPY * ./

EXPOSE 3000

RUN ls -l

RUN node --version

RUN express --version

CMD ["npm", "start"]
