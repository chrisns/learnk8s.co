FROM nginx@sha256:f547e3d0d5d02f7009737b284abc87d808e4252b42dceea361811e9fc606287f
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg