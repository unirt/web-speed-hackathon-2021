docker build -t ca-hackathon-2021-server .
docker tag ca-hackathon-2021-server:latest 425051898730.dkr.ecr.ap-northeast-1.amazonaws.com/ca-hackathon-2021-server:latest
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 425051898730.dkr.ecr.ap-northeast-1.amazonaws.com
docker push 425051898730.dkr.ecr.ap-northeast-1.amazonaws.com/ca-hackathon-2021-server:latest
