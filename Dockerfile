FROM nginx@sha256:029d4461bd98f124e531380505ceea2072418fdf28752aa73b7b273ba3048903
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg