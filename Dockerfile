FROM ubuntu:16.04
RUN apt-get update && apt-get install -y unzip python3 wget nano vim openjdk-8-jre \
   && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
RUN wget https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/karaf/0.8.4/karaf-0.8.4.zip

CMD python3
