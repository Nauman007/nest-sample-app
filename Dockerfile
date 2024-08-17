# Use the official Node.js image as a base
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the NestJS application
RUN npm run build

# Expose port 8000
EXPOSE 3000

# Start the NestJS application
CMD ["npm", "run", "start:prod"]
