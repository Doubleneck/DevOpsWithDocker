FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && apt-get install -y curl -sL https://deb.nodesource.com/setup_16.x | bash

RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN node -v && npm -v
RUN npm install && npm run build && npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]

EXPOSE 5000
