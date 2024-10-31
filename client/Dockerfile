# Stage 1: Build React app
FROM node:18 AS build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Set up Apache server
FROM httpd:2.4
COPY --from=build /app/build /usr/local/apache2/htdocs/

# Add env-config.js for runtime configuration
COPY public/env-config.js /usr/local/apache2/htdocs/env-config.js
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80
CMD ["/entrypoint.sh"]
