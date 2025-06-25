FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . .

RUN chmod +x main.sh
RUN chmod +x ./Cuberite/Cuberite

# Set default PORT for local testing
ENV PORT=8081

# Replace hardcoded port in Bungee config with $PORT
RUN sed -i "s/0.0.0.0:8081/0.0.0.0:${PORT}/g" ./Bungee/config.yml

EXPOSE 8081

CMD ["./main.sh"]
