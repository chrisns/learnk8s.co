FROM nginx@sha256:e21f8d0566ad4a2b7de56dae9e662147af6df51ed8a46692be3931513a1a56d7
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg