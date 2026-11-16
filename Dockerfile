FROM nginx:alpine
COPY tooling/index.html /usr/share/nginx/html/index.html
RUN chmod 644 /usr/share/nginx/html/index.html
