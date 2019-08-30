#!/bin/bash

#sed -i "s/PORT/$PORT/g" /etc/nginx/sites-enabled/default
supervisord -n
pip install -r /app/displacy/requirements.txt
pip install -r /app/matcher/requirements.txt
python /app/displacy/app.py
python /app/matcher/app.py