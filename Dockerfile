FROM nginx@sha256:adf382fc753c14b1d584b45fb4ecf2c469dcd5b25a25a299540b9db418049b12
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg