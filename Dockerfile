FROM nginx@sha256:e3a22a791adaf8f59de605d824f8d9cf0ac7c7c779d405bb0158144e57433246
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg