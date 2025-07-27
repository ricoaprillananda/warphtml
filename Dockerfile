FROM nginx:alpine

# Copy custom config ke dalam container
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy file HTML statis ke folder default NGINX
COPY html/ /usr/share/nginx/html

# Expose port 80 (default HTTP)
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
