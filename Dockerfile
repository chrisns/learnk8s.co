FROM nginx@sha256:2ec5f0c3187b06f80138442ed8ac143fd7b328dadb924acb3869ce059c04145e
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./learnk8s-logo.svg /usr/share/nginx/html/learnk8s-logo.svg
COPY ./cursor-normal.svg /usr/share/nginx/html/cursor-normal.svg
COPY ./cursor-target.svg /usr/share/nginx/html/cursor-target.svg
COPY ./game.css /usr/share/nginx/html/game.css
COPY ./game.js /usr/share/nginx/html/game.js
