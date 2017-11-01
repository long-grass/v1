#!/bin/bash
set -ex

docker-compose up -d
docker-compose run --rm node yarn
docker-compose run --rm rails bundle install --jobs=4
docker-compose run --rm rails bundle exec rake db:create
docker-compose up -d
