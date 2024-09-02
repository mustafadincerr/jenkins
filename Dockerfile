# Node.js temel imajını kullan
FROM node:14

# Çalışma dizinini oluştur
WORKDIR /app

# Uygulama kodunu kopyala
COPY . .

# Uygulama bağımlılıklarını yükle
RUN npm install

# Uygulama çalıştırma komutu
CMD ["node", "app.js"]
