#!  /bin/bash
profile="default"
region="ap-south-1"


echo "$1"
echo "$2"
echo "$3"

if [[ -n "$1" ]]; then
  profile="$1"
fi

if [[ -n "$2" ]]; then
  region="$2"
fi

if [[ -n "$3" ]]; then
  region="$3"
fi


aws ecr get-login-password --region "${region}" --profile "${profile}" | docker login --username AWS --password-stdin 047812372977.dkr.ecr.ap-south-1.amazonaws.com"
docker build -t devopsproject1  .
docker tag devopsproject1:latest 047812372977.dkr.ecr.ap-south-1.amazonaws.com/devopsproject1:latest"
docker push 047812372977.dkr.ecr.ap-south-1.amazonaws.com/devopsproject1:latest"
