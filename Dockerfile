# Base image
FROM node:16-alpine

# Working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port (Render default is 3000)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
