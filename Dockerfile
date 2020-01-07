FROM python:3.8-alpine

RUN apk add python3-dev build-base linux-headers pcre-dev uwsgi-python npm

ENV workers 1

EXPOSE 8000

COPY . /opt/service
COPY gulpfile_live.js /opt/service/gulpfile.js
WORKDIR /opt/service
RUN pip install -r requirements.txt
RUN npm install
RUN npm rebuild node-sass
RUN npm start
CMD gunicorn --log-level debug -t 300 -w ${workers}  -b 0.0.0.0:8000 app:app
