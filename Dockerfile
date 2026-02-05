FROM nginx@sha256:b19d9923c62ec9545779e9f85a113d4735ca83bfd6a953b3268e681847cbe350
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg