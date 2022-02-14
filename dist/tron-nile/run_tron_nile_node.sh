#!/bin/sh
echo 'Tron Nile Testnet'
echo 'P2P: 28888'
echo 'HTTP API: 9090'
echo 'SOLIDITY HTTP API: 9091'
echo 'gRPC: 6051'
echo 'JSON-RPC API: 60545'
echo 'Nile Explorer: https://nile.tronscan.org'

exec java -Xmx20g -jar FullNode.jar -c nile-testnet.conf --log-config logback.xml
