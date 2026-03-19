FROM node:20-slim

WORKDIR /app

# Copiar package.json primero
COPY package.json ./

# Instalar dependencias
RUN npm install --omit=dev

# Copiar TODO el código
COPY index.js ./
COPY public ./public

ENV PORT=8080
EXPOSE 8080

CMD ["node", "index.js"]
