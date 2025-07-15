FROM openjdk:17

# Set working directory
WORKDIR /app

# Copy server JAR into the container
COPY server.jar .

# Accept EULA (will be overridden if mounted volume already has one)
RUN echo "eula=true" > eula.txt

# Expose Minecraft port
EXPOSE 25565

# Run the Minecraft server
CMD ["java", "-Xmx2G", "-Xms2G", "-jar", "server.jar", "nogui"]
