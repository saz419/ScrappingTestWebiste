# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy your HTML file to the container
COPY . .

# Install http-server globally
RUN npm install -g http-server

# Install localtunnel globally
RUN npm install -g localtunnel

# Expose the port on which the server will run
EXPOSE 8080

# Start the local server and expose it using localtunnel
CMD http-server & lt --port 8080
