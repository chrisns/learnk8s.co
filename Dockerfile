FROM nginx@sha256:63a806f8f9c6bf69a17a28aaad48d8c6b38b9007a78db520d11d122126f8a0fb
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg