FROM nginx@sha256:0c2219ee6c9cc14b6b141bb1420b8be704e36dc44ecc27e89788b0993c46e7ca
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg