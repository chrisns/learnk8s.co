FROM nginx@sha256:b619c34a163ac12f68c1982568a122c4953dbf3126b8dbf0cc2f6fdbfd85de27
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg