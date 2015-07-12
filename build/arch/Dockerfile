FROM base/archlinux:2015.06.01

 RUN mkdir -p /opt /var/run \
    && pacman -Sq --noconfirm wget \
    && wget -q http://s3.eu-central-1.amazonaws.com/linux-pkg/zookeeper-3.4.6.tar.gz \
    && tar xzf zookeeper-3.4.6.tar.gz -C /opt \
    && wget -q http://s3.eu-central-1.amazonaws.com/linux-pkg/jre-7u80-ea-bin-b05-linux-x64.tar.gz \
    && tar xzf jre-7u80-ea-bin-b05-linux-x64.tar.gz -C /opt \
    && mv /opt/zookeeper-3.4.6 /opt/zookeeper \
    && mv /opt/jre1.7.0_80 /opt/jre \
    && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
    && paccache -rvk3 \
    && rm -f /zookeeper-3.4.6.tar.gz \
    && rm -f /jre-7u80-ea-bin-b05-linux-x64.tar.gz

ENV JAVA_HOME /opt/jre
ENV PATH $PATH:/opt/jre/bin

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]
