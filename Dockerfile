FROM nginx@sha256:c424bd04bb9d3dd358bfb73557283e38e00fa4ceee983c92be2a8ea4dac923df
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg