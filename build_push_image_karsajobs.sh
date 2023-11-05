# build docker image bernama ahmadauni/karsajobs dengan tag latest
docker build -t ahmadauni/karsajobs:latest .

# mengubah nama image yang sebelumnya merujuk di local menjadi ke GitHub Packages 
docker tag ahmadauni/karsajobs:latest ghcr.io/auni-st/ahmadauni/karsajobs:latest

# login ke GitHub Packages 
echo $TOKEN_GITHUB_PACKAGES | docker login ghcr.io -u auni-st --password-stdin

# mengunggah image ke GitHub Packages
docker push ghcr.io/auni-st/ahmadauni/karsajobs:latest