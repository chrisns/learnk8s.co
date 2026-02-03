FROM nginx@sha256:13310a9cc1de099b1bf22eaa712f491aa248ee524eaf930a0f0078c68124bfd4
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg