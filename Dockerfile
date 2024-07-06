# Use the official Nginx image as the base image
FROM nginx:latest

# Maintainer information (replace with your own)
LABEL maintainer="CodeOps Trek"

# Copy SSL certificate and key to the container
COPY ./Certificate/codeopstrek.crt /etc/nginx/ssl/nginx.crt
COPY ./Certificate/codeopstrek.key /etc/nginx/ssl/nginx.key

# Remove default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/

