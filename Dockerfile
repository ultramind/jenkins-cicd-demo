# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose the default Next.js port
EXPOSE 3000

# Start Next.js in development mode
CMD ["npm", "run", "dev"]
