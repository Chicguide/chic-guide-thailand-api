FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN apk add --no-cache git
RUN npm config set unsafe-perm true && npm ci --prod
COPY . .
EXPOSE 1337
CMD node server.js