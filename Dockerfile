FROM nginx:latest

# Remove default NGINX config and add custom one
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files
COPY ./dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
