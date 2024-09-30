FROM node:21-alpine

# Set working directory
WORKDIR /app

# Copy the package.json file for dependency installation (if already present)
COPY package.json ./

# Disable Next.js telemetry
ENV NEXT_TELEMETRY_DISABLED 1

# Install npm dependencies
RUN npm install

COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run development server
CMD ["npm", "run", "dev"]