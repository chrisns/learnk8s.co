FROM nginx@sha256:dec7a90bd0973b076832dc56933fe876bc014929e14b4ec49923951405370112
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg