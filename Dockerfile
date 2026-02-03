FROM nginx@sha256:6c9ab46b34b89274be77bf50253f97bf8f16eb11b98128d5694a8ae9b3efa2ed
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg