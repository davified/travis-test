#!/usr/bin/env bash

set -e

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

git_add_and_commit() {
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

git_push() {
  git remote set-url origin https://${GH_TOKEN}@github.com/davified/ml-ci-cd-demo.git > /dev/null 2>&1
  git push --quiet --set-upstream origin master 
}

setup_git
git_add_and_commit
git_push
