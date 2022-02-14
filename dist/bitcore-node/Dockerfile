FROM bitcore:v8.25.27

WORKDIR /bitcore/packages/bitcore-node
COPY ./bitcore.config.json ./
ENTRYPOINT [ "node", "build/src/server.js" ]
