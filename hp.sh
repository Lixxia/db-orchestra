#!/bin/bash

branch="$(git symbolic-ref --short HEAD)"

if [[ "$branch" == "heroku" ]]; then
    git push heroku master
else
    git push origin master
fi