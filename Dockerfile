# Stage 1
FROM --platform=linux/amd64 node:18-alpine as BUILD_IMAGE
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2
FROM --platform=linux/amd64 nginx:stable-alpine
COPY --from=BUILD_IMAGE /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]