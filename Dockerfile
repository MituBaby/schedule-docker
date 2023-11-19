# Gunakan image Node.js dari Docker Hub
FROM node:14-alpine

# Set direktori kerja di dalam container
WORKDIR /src/app

# Salin package.json dan package-lock.json ke direktori kerja
COPY package* ./

# Install dependensi menggunakan npm
RUN npm install

# Salin seluruh proyek ke direktori kerja
COPY . .

# Port yang akan digunakan oleh aplikasi
EXPOSE 3000

# Perintah untuk menjalankan aplikasi ketika container dijalankan
CMD ["npm", "run", "dev"]
