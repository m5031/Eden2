#!/bin/bash
pkill -9 celeryd 2>/dev/null
rm -rf /tmp/smart_programmer/assignment*
python manage.py celery worker --concurrency=5 --loglevel=INFO 2>&1 | tee smart_programmer/log/task.log
