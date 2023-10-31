# build docker image bernama item-app dengan tag v1
docker build -t item-app:v1 .

# menampilkan daftar image di lokal komputer
docker images

# mengubah nama image yang sebelumnya merujuk di local menjadi GitHub Packages 
docker tag item-app:v1 ghcr.io/auni-st/item-app:v1

# login ke GitHub Packages 
echo $TOKEN_GITHUB_PACKAGES | docker login ghcr.io -u auni-st --password-stdin

# mengunggah image ke GitHub Packages
docker push ghcr.io/auni-st/item-app:v1