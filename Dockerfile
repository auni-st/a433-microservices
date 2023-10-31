# mengambil base image dari Docker Hub bernama node dengan tag 14-alpine
FROM node:14-alpine 

# membuat directory bernama app di dalam container dan menjadikannya sebagai working directory
WORKDIR /app

# menyalin semua berkas yang ada di local working directory saat ini ke container working directory
COPY . .

# menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# mengekspos port yang akan digunakan oleh container yaitu port 8080
EXPOSE 8080

# mengeksekusi perintah npm start pada shell
CMD [ "npm", "start" ]