
FROM nginx:alpine
# Image Metadata 
LABEL maintainer="Hiqode DevOps Team"
LABEL project="Hiqode DevOps Platform"
LABEL version="1.0"
# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*
# Copy project files into nginx public folder
COPY . /usr/share/nginx/html
# Set proper file permissions (Good security practice)
RUN chmod -R 755 /usr/share/nginx/html
# Expose port 80 inside container
EXPOSE 80
# Start nginx in foreground mode 
CMD ["nginx", "-g", "daemon off;"]
