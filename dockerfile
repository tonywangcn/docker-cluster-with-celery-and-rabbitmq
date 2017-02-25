FROM python:2.7
ADD requirements.txt /app/requirements.txt
ADD ./test_celery/ /app/
WORKDIR /app/
RUN pip install -r requirements.txt
ENTRYPOINT celery -A test_celery worker --loglevel=info
#ENTRYPOINT ['celery','-A','test_celery', 'worker', '--loglevel=info']
