#!/usr/bin/env bash

if [ -z "$1" ] || [ -z "$2" ]
  then
    echo "$0 your_domain your_email"
    exit 1
fi


docker-compose -f docker-compose-certbot.yml run --service-ports certbot certonly --standalone  --rsa-key-size 4096 --email "$2" -d "$1"
