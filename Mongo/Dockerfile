# Use the official MongoDB image from Docker Hub
FROM mongo:5.0.15

# Directory to store MongoDB keys
RUN mkdir /keys

# Copy MongoDB keyfile into the container
COPY mongodb-keyfile.txt /keys/mongodb-keyfile.txt

# Set file permissions for the MongoDB keyfile
RUN chown mongodb:mongodb /keys/mongodb-keyfile.txt
RUN chmod 400 /keys/mongodb-keyfile.txt