# Use the official Nginx base image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf ./*

# Copy your project files into the container
COPY . .

# Expose port 80
EXPOSE 80

# Nginx automatically starts when the container runs
