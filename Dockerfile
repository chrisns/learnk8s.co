FROM nginx@sha256:83c4ec0e4b145cad7f5bdeb0bd6a1b0580ae6fa79f87b721b8c15f7ad8c59e69
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg