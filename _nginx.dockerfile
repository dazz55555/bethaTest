FROM nginx:1.19.10-alpine

RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

COPY .docker/conf/nginx/nginx.conf /etc/nginx/
COPY .docker/conf/nginx/default.conf /etc/nginx/conf.d/

EXPOSE 80