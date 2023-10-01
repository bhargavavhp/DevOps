#!/bin/sh
DIR="/home/Jaiganesh/new"
URL="https://github.com/bhargavavhp/installations.git"
NEWDIR="clone"

cd $DIR
git clone $URL $NEWDIR

kubectl apply -f svc.yaml -f test.yaml
if [ $(echo $?) -eq 0 ]
then
  echo "\n\nDeployed service and deployment!!\n\nWaiting for Deployment to be successful...\n\n"
  sleep 5
  kubectl get svc,deploy,po -o wide
else
  echo "\n\nDeployment Failed!!"
fi
