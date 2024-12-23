# Base image
FROM node:16-alpine

# Working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Fix network issues for npm
RUN npm config set registry https://registry.npmjs.org/

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
