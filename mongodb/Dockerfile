# Use MongoDB image as the base image
FROM mongo:5.0.15

# Directory to store the custom MongoDB configuration
RUN mkdir -p /etc/mongo

# Copy MongoDB configuration file into the container
COPY mongodb.conf /etc/mongo/mongodb.conf

# Directory to store the MongoDB keyfile for authentication
RUN mkdir -p /var/mongo/keyfile

# Copy MongoDB keyfile into the container
COPY mongodb-keyfile /var/mongo/keyfile/mongodb-keyfile

# Set file permissions for the MongoDB keyfile
RUN chown 999:999 /var/mongo/keyfile/mongodb-keyfile
RUN chmod 400 /var/mongo/keyfile/mongodb-keyfile

# Set file permissions for the MongoDB keyfile
RUN chown 999:999 /etc/mongo/mongodb.conf
RUN chmod 644 /etc/mongo/mongodb.conf

# Expose the MongoDB port
EXPOSE 27017

# Start MongoDB with authentication and the custom configuration
CMD ["mongod", "--auth", "--config", "/etc/mongo/mongodb.conf"]
