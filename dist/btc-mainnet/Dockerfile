FROM ubuntu:20.04 as full_bitcoin

ADD ./bitcoin-22.0-x86_64-linux-gnu.tar.gz /opt


FROM ubuntu:20.04

COPY --from=full_bitcoin /opt/bitcoin-22.0/bin/bitcoind /bin

EXPOSE 8332 8333
ENTRYPOINT [ "bitcoind", "-port=8333", "-rpcbind=0.0.0.0", "-rpcallowip=172.17.0.0/16", "-rpcport=8332", "-rpcuser=user", "-rpcpassword=password", "-listenonion=0" ]
