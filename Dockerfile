FROM nginx@sha256:75cad0ed4b9ea94413143f700eea1a71635806207ffb901b577c436a06ff4acd
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg