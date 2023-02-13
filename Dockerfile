From openjdk:8-jre-slim

RUN apt-get update && \
      apt-get install curl -y && \
      rm -rf /var/lib/apt/lists/*

ENV GAME_VERSION="latest"

RUN curl -L https://github.com/Anuken/Mindustry/releases/latest/download/server-release.jar

CMD java -jar server-release.jar
