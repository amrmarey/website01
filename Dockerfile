# Use the official Nginx image as the base image
FROM nginx:alpine-perl:latest

# Copy your website content into the container
COPY ./html5up-landed /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
