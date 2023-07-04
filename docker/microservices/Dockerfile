# Use Node.js version 14 as the base image
FROM node:14

# Set the working directory for the container
WORKDIR /app

# Copy all the source code to the working directory in the container
COPY . .

# Set the environment variables for the application
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Install production dependencies and build the application
RUN npm install --production --unsafe-perm && npm run build

# Expose the port used by the application
EXPOSE 8080

# Run the server when the container launches
CMD ["npm", "start"]