# Use the latest version of Node.js as the base
FROM node:latest

# Create a directory for your app
WORKDIR /usr/src/app

# Copy the package.jsonandpackage-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies for your app
RUN yarn

# Copy the rest of the source code to the working directory
COPY . .

# Expose the port on which your app will run
EXPOSE 3000

# Start your app when the container starts
CMD [ "yarn", "start" ]