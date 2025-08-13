FROM nginx@sha256:6fc1fffefda00b22ecc896f9c5e532006484b3938a240478c767658f9df9297b
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg