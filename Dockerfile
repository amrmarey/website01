# Use a specific version of the Nginx alpine image
FROM nginx:1.23.3-alpine-perl

# Add a non-root user and switch to it
RUN addgroup -S nginx && adduser -S nginx -G nginx
USER nginx

# Copy your website content into the container
COPY ./html5up-landed /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Use a read-only filesystem
VOLUME [ "/usr/share/nginx/html" ]

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
