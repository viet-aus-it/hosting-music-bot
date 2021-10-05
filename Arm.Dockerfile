FROM arm32v7/eclipse-temurin:11-jre-focal

ARG JMUSIC_BOT_VERSION=0.3.6
ARG JMUSIC_BOT_LINK=https://github.com/jagrosh/MusicBot/releases/download/${JMUSIC_BOT_VERSION}/JMusicBot-${JMUSIC_BOT_VERSION}.jar
WORKDIR /src
RUN curl -LkSso /src/JMusicBot.jar ${JMUSIC_BOT_LINK} && \
    chmod +x /src/JMusicBot.jar

ENTRYPOINT ["/usr/bin/java", "-Dnogui=true", "-jar", "JMusicBot.jar"]
