# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file
COPY default.conf /etc/nginx/conf.d/

# Copy the welcome page
COPY html/index.html /usr/share/nginx/html/

