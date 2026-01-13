FROM nginx@sha256:06eb0c817047c1d0f247f700431a4cddfb26a7622903dcb6fbe264de2c588f23
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg