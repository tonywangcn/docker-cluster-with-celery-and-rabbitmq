FROM python:2.7
ADD requirements.txt /app/test_celery/requirements.txt
ADD ./test_celery/ /app/
WORKDIR /app/
RUN pip install celery
ENTRYPOINT celery -A test_celery worker --loglevel=info
#ENTRYPOINT ['celery','-A','test_celery', 'worker', '--loglevel=info']
