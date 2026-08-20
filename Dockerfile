FROM nginx@sha256:8f029c543423e3eac6b08254718bc31eb75633b1e448026b6616927baa7d4bfe
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg
COPY ./cursor-normal.svg /usr/share/nginx/html/cursor-normal.svg
COPY ./cursor-target.svg /usr/share/nginx/html/cursor-target.svg
COPY ./game.css /usr/share/nginx/html/game.css
COPY ./game.js /usr/share/nginx/html/game.js
