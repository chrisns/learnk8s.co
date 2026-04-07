FROM nginx@sha256:381b45aeb56e1ab20ed5ec5fe6483f44050d9ce1a837575f0d1333a6c6e4e251
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg
COPY ./cursor-normal.svg /usr/share/nginx/html/cursor-normal.svg
COPY ./cursor-target.svg /usr/share/nginx/html/cursor-target.svg
COPY ./game.css /usr/share/nginx/html/game.css
COPY ./game.js /usr/share/nginx/html/game.js
