# Use the official Nginx base image
FROM nginx:alpine

# Replace the default Nginx welcome page with custom content
COPY ./site/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]