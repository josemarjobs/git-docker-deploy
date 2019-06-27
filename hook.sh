#!/bin/sh

TARGET=/Users/josemardacostamagalhaes/code/git/hooks/extracted

REPO=/Users/josemardacostamagalhaes/code/git/hooks/bare

echo 'Extracting...'

git --work-tree=$TARGET --git-dir=$REPO checkout -f
