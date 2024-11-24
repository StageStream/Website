FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY webpage/ .
EXPOSE 80