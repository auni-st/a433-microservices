#melakukan pull image node:14-alpine dari Dockerhub dan menamainya builder
FROM node:14-alpine as builder 

#menentukan working directory adalah /src
WORKDIR /src

#melakukan copy semua file di current directory host ke directory container
COPY * ./

#menginstal dependency yang dispesifikasikan di file package-log.json
RUN npm ci

#melakukan copy semua file di current directory host ke directory container
COPY . .

#menentukan bahwa apliasi di container akan listen ke port 3000
EXPOSE 3000

#mengeksekusi command "node index.js"
CMD ["node", "index.js"]