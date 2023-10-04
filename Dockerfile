# Start your image with a node base image
FROM node:18-alpine as base

# The /app directory should act as the main application directory
WORKDIR /app

COPY . .
# Copy the app package and package-lock.json file
# COPY package*.json ./

RUN npm install \
    && npm install -g serve \
    && npm run build \
    && rm -fr node_modules

COPY . .

EXPOSE 80

CMD [ "serve", "-s", "dist" ]

# Copy local directories to the current local directory of our docker image (/app)
# COPY ./src ./src
# COPY ./public ./public