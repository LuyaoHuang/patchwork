#!/bin/sh

pip install -r requirements.txt
python manage.py migrate

#https://github.com/dlespiau/patchwork/issues/166
python manage.py loaddata default_events
python manage.py loaddata default_tags
python manage.py loaddata default_states
