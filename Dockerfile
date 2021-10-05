FROM debian:buster as base

ARG JMUSIC_BOT_VERSION=0.3.6
ARG JMUSIC_BOT_LINK=https://github.com/jagrosh/MusicBot/releases/download/${JMUSIC_BOT_VERSION}/JMusicBot-${JMUSIC_BOT_VERSION}.jar
WORKDIR /src
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    curl -LkSso /src/JMusicBot.jar ${JMUSIC_BOT_LINK} && \
    chmod +x /src/JMusicBot.jar

FROM gcr.io/distroless/java:11
COPY --from=base /src /src
WORKDIR /src
ENTRYPOINT ["/usr/bin/java", "-Dnogui=true", "-jar", "JMusicBot.jar"]
