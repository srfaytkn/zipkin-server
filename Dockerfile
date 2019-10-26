FROM openjdk:11-jdk-stretch

ENV TZ Europe/Istanbul
ARG RABBIT_URI
ENV RABBIT_URI $RABBIT_URI
EXPOSE 9411

RUN apt-get update
RUN mkdir /app-container
COPY . /app-container
WORKDIR /app-container

RUN curl -sSL https://zipkin.io/quickstart.sh | bash -s

ENTRYPOINT ["java","-jar","zipkin.jar","echo --RABBIT_URI=$RABBIT_URI"]
