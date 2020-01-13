FROM python:3.8-alpine

RUN apk add nginx python3-dev build-base linux-headers pcre-dev uwsgi-python npm

# https://superuser.com/a/1306682
RUN mkdir -p /run/nginx


# RUN mkdir -p /var/log/nginx
RUN mkdir -p /var/log/nginx && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stdout /var/log/nginx/error.log

COPY nginx.conf /etc/nginx/nginx.conf

COPY . /opt/service
COPY gulpfile_live.js /opt/service/gulpfile.js
WORKDIR /opt/service
RUN pip install -r requirements.txt
RUN npm install
RUN npm rebuild node-sass
RUN npm start

EXPOSE 8000

RUN chmod +x run-service.sh
CMD ["./run-service.sh"]
