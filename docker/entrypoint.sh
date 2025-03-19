#!/bin/bash
set -e

# Запускаем Docker внутри контейнера
service docker start

# Запускаем GitHub Runner
cd /home/devuser/actions-runner
./config.sh --url https://github.com/grisha-topolev/coursework --token A3CHSHNO3BSMITEC43SJIATH3LISE
./run.sh &

# Запускаем внутренний контейнер с приложением
docker-compose up --build
