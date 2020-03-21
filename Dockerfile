FROM node

COPY ./package.json /usr/src/app/
WORKDIR /usr/src/app/
RUN npm install -g package.json

COPY . /usr/src/app/
RUN npm install -g

ENTRYPOINT [ "peercast" ]
