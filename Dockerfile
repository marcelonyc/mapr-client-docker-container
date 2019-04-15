FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install wget gnupg
RUN echo "deb https://package.mapr.com/releases/v6.1.0/ubuntu binary trusty" >> /etc/apt/sources.list
RUN echo "deb https://package.mapr.com/releases/MEP/MEP-6.0.0/ubuntu binary trusty" >> /etc/apt/sources.list
RUN wget -O - https://package.mapr.com/releases/pub/maprgpg.key > /tmp/mapr-key
RUN apt-key add /tmp/mapr-key
RUN apt-get -y update
RUN apt-get -y install openjdk-8-jdk mapr-posix-client-platinum
RUN mkdir /mapr
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT sh /entrypoint.sh
