FROM nginx
COPY ./dist /usr/share/nginx/html
COPY ./vue-nginx.conf /etc/nginx/conf.d/
EXPOSE 80