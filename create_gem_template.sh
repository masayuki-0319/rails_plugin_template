#!/usr/bin/env bash

if [ $# != 1 ]; then
  echo "Enter GEM_NAME as an argument."
  exit 1
fi

GEM_NAME=$1

set -xe

docker-compose run -rm app bundle gem $GEM_NAME --test=rspec --mit --no-coc

cp -rf ./docker docker-compose.yml $GEM_NAME
cat <<TEXT >> .gitignore
$GEM_NAME/*
TEXT

cd $GEM_NAME/

git init
git commit -am "first commit"

docker-compose up -d
