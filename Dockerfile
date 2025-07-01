FROM nginx@sha256:c8a44136afa900a94ac7a07c4d333afc749e8808c94c81d29541d84e091fb615
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg