# Gunakan base image Node.js LTS
FROM node:20

# Atur working directory dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin semua file dari project ke dalam container
COPY . .

# Expose port 3000 di container
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]
