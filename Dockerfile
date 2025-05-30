# Use official Node.js LTS image as base
FROM node:23-slim

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy app source code
COPY . .

# Expose port (use the same port your app listens on)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
