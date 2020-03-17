# Use a standard Node image from Docker Hub 
FROM ubuntu

# The Dockerfile's author
#LABEL Usama Ashraf

RUN apt-get update
#RUN apt-get install iputils-ping
RUN apt install net-tools
RUN apt-get install nano
# Create a directory in the container where the code will be placed
RUN mkdir -p /dhcp-dir-inside-container
# Set this as the default, working directory.
# We'll land here when we SSH into the container.
WORKDIR /dhcp-dir-inside-container

# Copy everything inside src to our directory in the container
#ADD ./src /backend-dir-inside-container

# Our Nginx container will forward HTTP traffic to containers of 
# this image via port 3000.
#EXPOSE 3000

#CMD ["node", "index.js"]
