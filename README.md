# Docker Java

Docker build file for Java JDK. You need to have [Docker](https://www.docker.com/) installed and running to make this useful.

## Build from source

### How to build

```
git clone https://github.com/gabrianoo/docker-java.git
docker build -t docker-java-custom docker-java
```

### How to run

```
docker run -d --name docker-java docker-java-custom
```

## Versions

### Java Latest

#### What is inside

1. Ubuntu 14.04
2. Oracle Java 8 Latest

#### How to run

```
docker run -d --name java otasys/java
```

### Java [1.8.0_66](https://github.com/gabrianoo/docker-java/releases/tag/1.8.0_66)

#### What is inside

1. Ubuntu 14.04
2. Java 1.8.0_66

#### How to run

```
docker run -d --name java otasys/java:1.8.0_66
```
