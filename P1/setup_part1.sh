username=$USER
routername=${username}_router
hostname=${username}_host

docker build -t $hostname -f Dockerfile.host .
docker build -t $routername -f Dockerfile.router .


