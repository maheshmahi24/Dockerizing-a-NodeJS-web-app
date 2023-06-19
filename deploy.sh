aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 092101872227.dkr.ecr.ap-southeast-1.amazonaws.com
docker pull 092101872227.dkr.ecr.ap-southeast-1.amazonaws.com/automation-docker:$1
docker ps -a
docker rm -f dotnet-app | ls -la
docker ps -a
docker run -itd -p 3000:3000 --name node:10 092101872227.dkr.ecr.ap-southeast-1.amazonaws.com/automation-docker:$1
docker ps -a
