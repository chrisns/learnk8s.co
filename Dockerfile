FROM nginx@sha256:39474e84c4626cafe5b060db347154b46e588fc1f79176af7e20a7e1d76f0436
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg