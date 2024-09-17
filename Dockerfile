FROM nginx:alpine

COPY nginx.conf /etc/nginx/sites-available/default
COPY src /usr/share/nginx/html
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]