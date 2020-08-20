# Use the official image as a parent image.
FROM tomcat:latest

# Set the working directory.
#WORKDIR /usr/src/app

# Copy the file from your host to your current location.
COPY webapp.war /usr/local/tomcat/webapps

# Run the command inside your image filesystem.
RUN cp -rf /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/.

# Add metadata to the image to describe which port the container is listening on at runtime.
#EXPOSE 8080

# Run the specified command within the container.
#CMD [ "npm", "start" ]

# Copy the rest of your app's source code from your host to your image filesystem.
#COPY . .
