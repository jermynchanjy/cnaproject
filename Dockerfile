FROM ubuntu:latest
RUN apt-get update && apt install -y iputils-ping
CMD echo "updated the ubuntu"
# Use the official PHP image as the base image
FROM php:latest

# Copy the PHP application files to the container
COPY . /var/www/html

# Expose port 80 for web traffic
EXPOSE 80

# Set the working directory
WORKDIR /var/www/html

CMD ["php","-S", "0.0.0.0:80"]  
