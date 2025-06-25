#!/bin/bash

# Use Railway's assigned port or default to 8081
PORT=${PORT:-8081}

# Run Cuberite server in background
cd ./Cuberite
chmod +x Cuberite
./Cuberite &

# Run BungeeCord with port from $PORT
cd ../Bungee
java -Xmx256M -Xms256M -jar bungee.jar --port $PORT &

# Wait to keep container running
wait
