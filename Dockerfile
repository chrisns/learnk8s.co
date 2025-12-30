FROM nginx@sha256:ad85427e8c7147e2bfb485f7829e46316495695d7936a6d4459cfcfd351535cc
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg