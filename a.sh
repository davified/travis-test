#!/usr/bin/env bash

set -e

echo "this shouldn't run on travis"
echo "running a.sh"

touch somefile_$(date).txt

./travis_git_push.sh