FROM nginx:stable

# Copy the HTML, CSS, and JavaScript files into the container
COPY index.html /usr/share/nginx/html/
COPY js/script.js /usr/share/nginx/html/
COPY css/style.css /usr/share/nginx/html/


# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]