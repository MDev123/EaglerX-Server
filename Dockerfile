FROM openjdk:8-jdk

WORKDIR /app

COPY . .

RUN chmod +x main.sh

EXPOSE 8081

CMD ["./main.sh"]
