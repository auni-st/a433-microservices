# build docker image bernama ahmadauni/karsajobs-ui dengan tag latest
docker build -t ahmadauni/karsajobs-ui:latest .

# mengubah nama image yang sebelumnya merujuk di local menjadi GitHub Packages
docker tag ahmadauni/karsajobs-ui:latest ghcr.io/auni-st/ahmadauni/karsajobs-ui:latest

# login ke GitHub Packages 
echo $TOKEN_GITHUB_PACKAGES | docker login ghcr.io -u auni-st --password-stdin

# mengunggah image ke GitHub Packages
docker push ghcr.io/auni-st/ahmadauni/karsajobs-ui:latest