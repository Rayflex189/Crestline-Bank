#!/usr/bin/env bash
# Exit on error
set -o errexit

# Collect static files
python manage.py collectstatic --no-input

# Make migrations
python manage.py makemigrations

# Apply database migrations
python manage.py migrate

# Create superuser if it doesn't exist
python manage.py create_admin