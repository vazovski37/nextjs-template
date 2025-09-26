# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package.json ./
COPY package-lock.json ./
# If you are using yarn, use this instead:
# COPY yarn.lock ./

# Install project dependencies
RUN npm install
# If using yarn:
# RUN yarn install --frozen-lockfile

# Copy the rest of your application's code into the container
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# The command to run when the container starts.
# This starts the Next.js development server.
CMD ["npm", "run", "dev"]
# If using yarn:
# CMD ["yarn", "dev"]
