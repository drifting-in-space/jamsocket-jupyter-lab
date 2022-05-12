#!/bin/sh

jupyter-lab --generate-config
echo "c.ServerApp.token = '$JAMSOCKET_JUPYTER_TOKEN'" >> ~/.jupyter/jupyter_lab_config.py

# automatically redirect / to a notebook by uncommenting and editing the following line:
# echo "c.ServerApp.default_url = '/notebooks/[YOUR NOTEBOOK HERE].ipynb'" >> ~/.jupyter/jupyter_notebook_config.py

# to embed the jupyter notebook in an iframe, uncomment the following line and edit your domain
# echo "c.ServerApp.tornado_settings = {'headers': {'Content-Security-Policy': 'frame-ancestors \'self\' [YOUR DOMAIN];'}}" >> ~/.jupyter/jupyter_notebook_config.py

jupyter-lab --collaborative --ip 0.0.0.0 --port 8080 --no-browser
