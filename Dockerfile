# Etapa 1: Construir a aplicação Angular
FROM node:latest AS build-client
WORKDIR /app
COPY birthday-app/package.json birthday-app/package-lock.json ./
RUN npm install
COPY birthday-app/ ./
RUN npm run build --prod

# Etapa 2: Construir a API Node.js
FROM node:latest AS build-api
WORKDIR /birthday-api
RUN npm install -g typescript
COPY birthday-api/package.json .
RUN rm -rf node_modules
RUN npm install
COPY birthday-api/ ./
RUN tsc

# Etapa 3: Combinar Angular com Nginx e API Node.js
FROM nginx:alpine AS runtime-client
COPY --from=build-client /app/dist/birthday-app /usr/share/nginx/html

COPY birthday-app/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

# Copiar a API para o mesmo contêiner
COPY --from=build-api /birthday-api /birthday-api
WORKDIR /birthday-api
EXPOSE 3000
CMD ["sh", "-c", "npm start & nginx -g 'daemon off;'"]
