# Use the official Node.js 14 Alpine image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the React app for production
RUN npm run build

# Expose the app on port 3000 (or whatever port the app runs on)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
