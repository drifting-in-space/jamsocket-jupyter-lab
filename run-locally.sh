#!/bin/sh

PORT=8888
JAMSOCKET_JUPYTER_TOKEN=b427c33f5454303655e31aec9d0779

docker build . -t jupyterlab

echo "\nstarting jupyterlab"
echo "connect with token: $JAMSOCKET_JUPYTER_TOKEN \n"

docker run -p $PORT:$PORT --env JAMSOCKET_JUPYTER_TOKEN=$JAMSOCKET_JUPYTER_TOKEN -it jupyterlab
