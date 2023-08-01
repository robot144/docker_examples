FROM ${DOCKERHUB}library/nginx:latest

# content of the site folder will be copied to the default nginx public folder
COPY ./site/* /usr/share/nginx/html/

# copy the default nginx config file to the nginx config folder
COPY default /etc/nginx/sites-available/default

# expose port 80 - allow access to the nginx server
EXPOSE 80

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

