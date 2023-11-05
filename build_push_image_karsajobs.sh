docker build -t ahmadauni/karsajobs:latest .

docker tag ahmadauni/karsajobs:latest ghcr.io/auni-st/ahmadauni/karsajobs:latest

echo $TOKEN_GITHUB_PACKAGES | docker login ghcr.io -u auni-st --password-stdin

docker push ghcr.io/auni-st/ahmadauni/karsajobs:latest