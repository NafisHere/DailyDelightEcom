#!/bin/bash

# Run migrations first
python manage.py migrate --noinput

# Collect static files
python manage.py collectstatic --noinput

# Start the server
exec gunicorn ecomprj.wsgi:application --bind 0.0.0.0:$PORT
