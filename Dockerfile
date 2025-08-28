FROM node:18

# Environment variables
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=pass 

# Set working directory
WORKDIR /app

# Copy package.json first and install deps
COPY package*.json ./
RUN npm install --production

# Copy the rest of the app
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
