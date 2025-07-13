# Use official Node.js LTS image as the base
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application source code
COPY . .

# Expose the port (change 3000 if your app uses a different port)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]