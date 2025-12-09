FROM nginx@sha256:2f4e10193b0c4f61472245e9d26cea78e7df7af266c7e7cf5e67353ee2731b51
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg