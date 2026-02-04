# Use a base image with node.js (1)
FROM node:25.6.0-alpine3.22

# Default working directory is / (root), use a subdirectory for our app
WORKDIR /app

# Copy the code file index.js into the image (2)
COPY index.js .

# This port number should match index.js (3)
EXPOSE 3000

# Tell docker what command to use to start the app (4)
CMD ["node", "index.js"]
