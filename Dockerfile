FROM nginx@sha256:7ad64835251abfd777c0058f472b5e107d6eb3ef0d2e9077a44623a0b51f7dc3
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg