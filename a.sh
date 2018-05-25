#!/usr/bin/env bash

set -e

echo "this shouldn't run on travis"
echo "running a.sh"

rm -rf somefile.txt
echo $(date) > somefile.txt

./travis_git_push.sh