#!/bin/sh
echo 'Tron Mainnet'
echo 'P2P: 18888'
echo 'HTTP API: 8090'
echo 'SOLIDITY HTTP API: 8091'
echo 'gRPC: 5051'
echo 'JSON-RPC API: 50545'
echo 'Explorer: https://tronscan.org'

exec java -Xmx24g -XX:+UseConcMarkSweepGC -jar FullNode.jar -c main_net_config.conf --log-config logback.xml
