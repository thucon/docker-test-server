FROM nginx:1.23.0-alpine
#RUN apk update && apk add bash
COPY /nginx/conf.d /etc/nginx/conf.d
COPY /nginx/www /var/www
