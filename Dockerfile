FROM openjdk:17

WORKDIR /app

# Download the Minecraft server jar directly
RUN wget https://launcher.mojang.com/v1/objects/9dc118b73c6d49ec3f66bba64654d5e52b92b3f7/server.jar

# Accept the EULA
RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java", "-Xmx2G", "-Xms2G", "-jar", "server.jar", "nogui"]
