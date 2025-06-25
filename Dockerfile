FROM openjdk:8-jdk

WORKDIR /app

RUN apt-get update && \
    apt-get install -y tmux curl && \
    curl -fsSL https://getcaddy.com | bash

COPY . .

RUN chmod +x main.sh

EXPOSE 8081

CMD ["./main.sh"]
