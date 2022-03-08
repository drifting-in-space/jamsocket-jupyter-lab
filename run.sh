#!/bin/sh

jupyter-lab --generate-config
echo "c.ServerApp.token = '$JAMSOCKET_JUPYTER_TOKEN'" >> ~/.jupyter/jupyter_lab_config.py

jupyter-lab --collaborative --ip 0.0.0.0 --no-browser
