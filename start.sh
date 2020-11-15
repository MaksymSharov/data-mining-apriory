#!/usr/bin/env bash

sudo chown -R :www-data .
sudo chmod g+w -R .

sudo chmod a+x ./bin/composer.phar

docker-compose stop
docker-compose rm --force

docker-compose pull

docker-compose up -d --remove-orphans

docker ps
#
#docker exec spyservice_php php ./bin/console --env=prod cache:clear --no-warmup
#docker exec spyservice_php php ./bin/console --env=prod cache:warmup
