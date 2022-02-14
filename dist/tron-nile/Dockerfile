FROM ubuntu:20.04

ADD jdk-8u301-linux-x64.tar.gz /opt/java
ENV PATH="/opt/java/jdk1.8.0_301/bin:${PATH}"

WORKDIR /opt/tron/
COPY FullNode.jar ./
COPY nile-testnet.conf ./
COPY logback.xml ./
COPY run_tron_nile_node.sh ./

EXPOSE 28888/tcp 9090/tcp 9091/tcp 6051/tcp 60545/tcp
ENTRYPOINT [ "./run_tron_nile_node.sh" ]
