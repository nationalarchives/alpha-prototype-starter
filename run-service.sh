#!/bin/sh

echo Starting Nginx
nginx

echo Starting Gunicorn
gunicorn --log-level debug -t 300 -w 2 -b 0.0.0.0:5000 app:app

