FROM ubuntu:20.04

ADD jdk-8u301-linux-x64.tar.gz /opt/java
ENV PATH="/opt/java/jdk1.8.0_301/bin:${PATH}"

WORKDIR /opt/tron/
COPY FullNode.jar ./
COPY main_net_config.conf ./
COPY logback.xml ./
COPY run_tron_mainnet_node.sh ./

EXPOSE 18888/tcp 8090/tcp 8091/tcp 5051/tcp 50545/tcp
ENTRYPOINT [ "./run_tron_mainnet_node.sh" ]
