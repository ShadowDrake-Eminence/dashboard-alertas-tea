FROM nginx:alpine

COPY . /usr/share/nginx/html/

COPY docker/default.conf /etc/nginx/conf.d/default.conf
COPY docker/entrypoint.sh /docker-entrypoint.d/30-configure-dashboard.sh
RUN chmod +x /docker-entrypoint.d/30-configure-dashboard.sh

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
