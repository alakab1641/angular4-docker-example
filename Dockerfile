# Base image
FROM ubuntu:18.04

# Installing Required Packages
RUN     apt-get update && \
        apt-get upgrade -y && \
        apt-get install -y git curl

# Installing NodeJS
RUN     curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
        apt-get install -y nodejs

# Creating the educative directory and downloading the code for the application in it
RUN     mkdir /educative && \
	cd /educative && \
        git clone https://github.com/avatsaev/angular4-docker-example.git

# Installing Angular cli and node modules in angular directory
RUN     npm install -g @angular/cli && \
        cd /educative/angular_demo && \
        npm i
