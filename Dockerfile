FROM nginx@sha256:0d1b1f0656a7cb1e2e8135bb1ea99d889ee5d3345fc20388da3f555ad77cf2dc
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg