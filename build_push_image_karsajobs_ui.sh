docker build -t ahmadauni/karsajobs-ui:latest .

docker tag ahmadauni/karsajobs-ui:latest ghcr.io/auni-st/ahmadauni/karsajobs-ui:latest

echo $TOKEN_GITHUB_PACKAGES | docker login ghcr.io -u auni-st --password-stdin

docker push ghcr.io/auni-st/ahmadauni/karsajobs-ui:latest