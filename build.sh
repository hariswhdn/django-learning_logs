#!/bin/bash
echo "requirements.."
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
echo "makemigrations.."
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput
echo "collectstatic.."
mkdir logs
python3 manage.py collectstatic --noinput --clear
rm -rf logs
