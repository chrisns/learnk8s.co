FROM nginx@sha256:c8dc101ba61a499398c245fed8123abc20a3867ebd3664087890a054a781770b
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg