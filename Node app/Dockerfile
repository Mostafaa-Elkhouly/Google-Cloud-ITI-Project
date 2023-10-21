FROM node:alpine 

# Set environment variables
ENV WEBport "3000"
ENV DBuser "mostafa"
ENV DBpass "123456+*"
ENV DBhosts "mongo-0.mongo:27017"

# Create app directory
WORKDIR /app

COPY . . 

# Install app dependencies
RUN npm install

# Expose the port the app will run on
EXPOSE $WEBport 

# Start Node.js application
CMD [ "npm" , "start"]