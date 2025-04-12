# Use the Node.js official image from DockerHub
FROM node:16-alpine

# Set working directory in container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY Sofa-Node-Shop/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY Sofa-Node-Shop .

# Expose port (same as the port in your app)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
