# Use the Node.js Bullseye image as the base image
FROM node:20.9.0-bullseye

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port on which your app runs
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]
