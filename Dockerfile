# Start your image with a node base image
FROM node:18-alpine

# The /app directory should act as the main application directory
WORKDIR /app

COPY . .
# Copy the app package and package-lock.json file
# COPY package*.json ./

RUN npm install

# serve defaults to port 3000
EXPOSE 3000

CMD [ "npm", "run", "dev" ]

# Copy local directories to the current local directory of our docker image (/app)
# COPY ./src ./src
# COPY ./public ./public