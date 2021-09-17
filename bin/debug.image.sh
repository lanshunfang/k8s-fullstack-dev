#!/bin/bash

eval $(minikube docker-env)
docker run -it --rm  --entrypoint /bin/sh $(docker images | grep skaffold-create-react-app | awk '{print $3}' )