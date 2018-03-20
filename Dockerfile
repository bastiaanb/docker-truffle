FROM node:9.8-alpine

RUN install -d /usr/src/app
WORKDIR /usr/src/app

RUN apk add -t .gyp --no-cache git python g++ make \
    && npm install -g truffle@4.1.x \
    && npm install -g web3@0.19.0 \
    && npm install -g truffle-contract \
    && apk del .gyp

ENTRYPOINT ["truffle"]
