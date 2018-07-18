#!/bin/sh
docker-compose up -d appium
docker-compose run --rm robot sh
docker-compose stop
docker-compose rm -f
