FROM nginx:1.19.7

ARG _SERVER_NAME
ENV SERVER_NAME ${_SERVER_NAME}

ARG _BACKEND_URL
ENV BACKEND_URL ${_BACKEND_URL}

RUN rm -f /etc/nginx/conf.d/*
ADD nginx.conf /etc/nginx/nginx.conf
ADD templates /etc/nginx/templates

