FROM ubuntu:20.04 as full_bitcoin

ADD ./bitcoin-22.0-x86_64-linux-gnu.tar.gz /opt


FROM ubuntu:20.04

COPY --from=full_bitcoin /opt/bitcoin-22.0/bin/bitcoind /bin

EXPOSE 18332 18333
ENTRYPOINT [ "bitcoind", "-testnet", "-port=18333", "-rpcbind=0.0.0.0", "-rpcallowip=172.17.0.0/16", "-rpcport=18332", "-rpcuser=user", "-rpcpassword=password", "-listenonion=0" ]
