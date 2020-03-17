FROM ubuntu

RUN apt-get update
RUN apt install net-tools
RUN apt-get install nano

# Create a directory in the container where the code will be placed
RUN mkdir -p /dns-dir-inside-container

# Set this as the default, working directory.
# We'll land here when we SSH into the container.
WORKDIR /dns-dir-inside-container

# Copy everything inside src to our directory in the container
#ADD ./src /backend-dir-inside-container

#EXPOSE 3000

#CMD ["node", "index.js"]
