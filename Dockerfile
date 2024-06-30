# Use the official Nginx image as the base image
FROM nginx:alpine

LABEL maintainer="github.com/mani1765"

# Remove default webapp application
RUN rm -rf /usr/share/nginx/html/*

# Copy the contents of the webapp folder to the Nginx HTML folder
COPY webapp/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
