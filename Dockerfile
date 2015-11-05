FROM ubuntu:14.04
MAINTAINER Ahmed Hassanien <ahmed_hassanien@otasys.com>

# Set JAVA_HOME variable and DEBIAN_FRONTEND
ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle \
    DEBIAN_FRONTEND=noninteractive

## Add Oracle Java 8 Repository to Ubuntu and Upgrade ubuntu to latest
## Install wget, Software Properties Common to use add-apt-repository command and Java 8
## Remove unwanted applications & Clean Installations
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get -q update && \
    apt-get -yq upgrade && \
    apt-get -yq install wget software-properties-common oracle-java8-installer && \
    apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/oracle-jdk8-installer /var/cache/apt

# Default command.
CMD [/bin/bash]
