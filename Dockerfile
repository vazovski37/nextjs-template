# Use a lightweight Node.js image with all the tools
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to cache dependencies
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Expose port 3000 where Next.js dev server runs
EXPOSE 3000

# The critical part: this command starts the live dev server with hot-reloading
# Next.js will watch for file changes in the /app directory
CMD ["npm", "run", "dev", "--port", "3000"]
