#!/usr/bin/env bash

set -e

setup_git() {
  # git config --global user.email "travis@travis-ci.org"
  # git config --global user.name "Travis CI"
  echo "setup_git"
}

git_add_and_commit() {
  echo "add commit"
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

git_push() {
  echo "push"
  git push --quiet --set-upstream origin master 
}

setup_git
git_add_and_commit
git_push
