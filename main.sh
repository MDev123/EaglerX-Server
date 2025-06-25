#!/bin/bash

# No tmux or caddy usage here

# Run Cuberite in background
./Cuberite/Cuberite &

# Run BungeeCord (EaglerXBungee) in foreground
java -Xmx256M -Xms256M -jar ./Bungee/bungee.jar
