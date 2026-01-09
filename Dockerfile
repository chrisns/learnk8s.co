FROM nginx@sha256:fa5f6b4cc851e85f8542619dac4f60b1f24681fc7be221d00f4221c4f3b92caa
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg