FROM nginx@sha256:b17697e86d0c02378716277d09f45b946f8709aaa12c708e30fdd4736f536af1
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg