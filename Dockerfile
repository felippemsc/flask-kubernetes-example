FROM python:3.7-alpine

EXPOSE 5000

COPY . app
WORKDIR app

RUN pip install --no-cache-dir -U pip pipenv
RUN pipenv install --system

CMD gunicorn -w 4 -b 0.0.0.0:5000 wsgi:APP
