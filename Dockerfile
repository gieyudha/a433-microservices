# Menggunakan base image node versi 14 dari docker hub
FROM node:14

# Menetapkan /app sebagai working direktory
WORKDIR /app

# Menyalin seluruh source code ke /app
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Meng ekspos port 8080 
EXPOSE 8080

# Menjalankan server node js
CMD ["npm", "start"]