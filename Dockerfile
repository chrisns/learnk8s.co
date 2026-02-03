FROM nginx@sha256:7fe5dda25bce8a7753f15e9800a6e894b87e9fd3013d3c40d2332575854bc9d0
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg