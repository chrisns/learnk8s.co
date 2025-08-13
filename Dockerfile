FROM nginx@sha256:bb395301e0be72b272d301a41bdcfe09241c0114b8fd53e9626c04a9ee672620
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg