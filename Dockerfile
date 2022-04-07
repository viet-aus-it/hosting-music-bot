FROM eclipse-temurin:11-jre-focal

ARG JMUSIC_BOT_VERSION=0.3.8
ARG JMUSIC_BOT_LINK=https://github.com/jagrosh/MusicBot/releases/download/${JMUSIC_BOT_VERSION}/JMusicBot-${JMUSIC_BOT_VERSION}.jar
WORKDIR /src
RUN curl -LkSso /src/JMusicBot.jar ${JMUSIC_BOT_LINK} && \
    chmod +x /src/JMusicBot.jar

ENTRYPOINT ["java", "-Dnogui=true", "-jar", "JMusicBot.jar"]
