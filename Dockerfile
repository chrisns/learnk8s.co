FROM nginx@sha256:600f7cd45e27aa13e9304c834ab7c1b0ff39df85ee1dcc5087955455d77bc83b
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg
COPY ./cursor-normal.svg /usr/share/nginx/html/cursor-normal.svg
COPY ./cursor-target.svg /usr/share/nginx/html/cursor-target.svg
COPY ./game.css /usr/share/nginx/html/game.css
COPY ./game.js /usr/share/nginx/html/game.js
