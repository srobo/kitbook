#!/usr/bin/env bash

set -e

DEPLOY_DIR=deploy

git config --global push.default simple
git config --global user.email $(git --no-pager show -s --format='%ae' HEAD)
git config --global user.name $CIRCLE_USERNAME

pipenv run mkdocs gh-deploy --verbose -m "Deploy build $CIRCLE_BUILD_NUM - $CIRCLE_SHA1 [ci skip]"
