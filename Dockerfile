FROM nginx@sha256:0511d915d4e7467a27e8eecd90643dbb60e148c0ef3b7486655296f8c768cadc
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg