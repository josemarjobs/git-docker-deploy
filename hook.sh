#!/bin/sh

TARGET=/Users/josemardacostamagalhaes/code/git/hooks/extracted
WORKDIR=/Users/josemardacostamagalhaes/code/git/hooks/extracted/src/app
REPO=/Users/josemardacostamagalhaes/code/git/hooks/bare

echo 'Extracting...'
git --work-tree=$TARGET --git-dir=$REPO checkout -f

echo 'Changing to '$WORKDIR
cd $WORKDIR
docker build -t josemarjobs/api .

echo 'Removing '$TARGET
# rm -rf $TARGET

echo 'Running container'
docker stop api || true
docker rm api || true
docker rmi josemarjobs/api:current || true
docker tag josemarjobs/api:latest josemarjobs/api:current
docker run -d --restart always --name api -p 8080:8080 josemarjobs/api:current

echo 'Done...'