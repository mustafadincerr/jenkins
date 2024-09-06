# Node.js imajından başla
FROM node:14

# Çalışma dizinini ayarla
WORKDIR /app

# package.json ve package-lock.json'ı çalışma dizinine kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Uygulama dosyalarını kopyala
COPY . .

# Uygulamanın çalışacağı port
EXPOSE 3000

# Uygulamayı başlat
CMD ["node", "app.js"]

