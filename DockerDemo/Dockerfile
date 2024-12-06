# Extend the Ubuntu image
FROM ubuntu

# Copy app script into Docker instance
COPY assignment.sh /bin/
RUN chmod +x /bin/assignment.sh
RUN chmod +rwx -R /bin

# Install vim & nginx
RUN apt update
RUN apt install nginx -y
RUN apt install vim -y

# Run app script
RUN /bin/assignment.sh

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
