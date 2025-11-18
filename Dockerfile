FROM nginx@sha256:b5b9e01613537b740e597a1aca6b8670a48f2f46493be50775567b09a61465a5
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg