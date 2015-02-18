FROM library/python:2.7.9

ENV PYTHONUNBUFFERED 1

RUN mkdir /web
WORKDIR /web

ADD requirements.txt /web/
RUN pip install -r requirements.txt

EXPOSE 8000

# CMD gunicorn --config gunicorn.conf wsgi:application
CMD uwsgi --ini uwsgi.conf
