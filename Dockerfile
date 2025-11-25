FROM node:18-slim

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy application files
COPY . .

# Expose port
EXPOSE 8080

# Set environment variable for port
ENV PORT=8080

# Start the application
CMD ["node", "index.js"]
