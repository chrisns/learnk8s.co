FROM nginx@sha256:bc4cad49969aaf95eb4eecec5572846f86e59f1e8332aba36ed64b91aff8b724
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg
COPY ./cursor-normal.svg /usr/share/nginx/html/cursor-normal.svg
COPY ./cursor-target.svg /usr/share/nginx/html/cursor-target.svg
COPY ./game.css /usr/share/nginx/html/game.css
COPY ./game.js /usr/share/nginx/html/game.js
