FROM ubuntu:16.04
RUN apt-get update && apt-get install -y unzip python3 wget nano vim openjdk-8-jre iputils-ping
RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre

RUN wget https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/integration/distribution-karaf/0.6.0-Carbon/distribution-karaf-0.6.0-Carbon.zip
RUN unzip distribution-karaf-0.6.0-Carbon.zip
RUN rm -rf distribution-karaf-0.6.0-Carbon.zip
WORKDIR distribution-karaf-0.6.0-Carbon
RUN mkdir /scripts
VOLUME /distribution-karaf-0.6.0-Carbon
VOLUME /scripts
WORKDIR /distribution-karaf-0.6.0-Carbon/bin
