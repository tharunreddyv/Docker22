#!/bin/bash
app="locuz-demo-container"
docker stop ${app}
docker rm ${app}
docker build -t ${app} .
docker run -it -d -p:80:80 --name=${app} ${app}

