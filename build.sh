#!/bin/bash
echo "requirements.."
python3.x -m pip install --upgrade pip
python3.x -m pip install -r requirements.txt
python3.x -m pip install -r requirements_remote.txt
echo "makemigrations.."
python3.x manage.py makemigrations --noinput
python3.x manage.py migrate --noinput
echo "collectstatic.."
mkdir logs
python3.x manage.py collectstatic --noinput --clear
rm -rf logs
