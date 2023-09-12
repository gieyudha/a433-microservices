# !/bin/sh

# Melakukan build menggunakan dockerfile dan menetapkan nama serta tag
docker build -t item-app:v1 .

# Melihat daftar images pada docker
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 ghcr.io/gieyudha/item-app:v1

# Login ke github packages
echo $PAT | docker login ghcr.io --username gieyudha --password-stdin

# Push image ke docker hub
docker push ghcr.io/gieyudha/item-app:v1