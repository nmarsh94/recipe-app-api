#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='/usr/local/apps/recipe-app-api'

git pull
$PROJECT_BASE_PATH/env/bin/python manage.py migrate
$PROJECT_BASE_PATH/env/bin/python manage.py collectstatic --noinput
supervisorctl restart recipe_api

echo "DONE! :)"
