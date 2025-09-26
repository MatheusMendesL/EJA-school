# Usa a imagem oficial do Node.js, versão 18
FROM node:18

# Define o diretório de trabalho
WORKDIR /app

# Copia apenas arquivos de configuração para aproveitar cache de dependências
COPY backend/package*.json ./

# Instala nodemon globalmente para hot reload
RUN npm install -g nodemon

# Instala dependências do projeto
RUN npm install

# Copia o restante do código (vai ser sobrescrito pelo volume no compose)
COPY backend/ .

# Expõe a porta da aplicação
EXPOSE 3000

# Comando para iniciar o backend em modo desenvolvimento
CMD ["npm", "run", "dev"]

