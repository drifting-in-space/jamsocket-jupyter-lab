#!/bin/sh

set -e

/home/jupyter/notebook-env/bin/jupyter-lab --generate-config

# protect your notebook with a password on the following line:
JUPYTER_LAB_PASSWORD=""
echo "c.ServerApp.token = '$JUPYTER_LAB_PASSWORD'" >> ~/.jupyter/jupyter_lab_config.py

# provide the notebook you want to start Jupyter with on the following line:
NOTEBOOK="hello-tmpenv.ipynb"
echo "c.ServerApp.default_url = '/lab/tree/$NOTEBOOK'" >> ~/.jupyter/jupyter_lab_config.py

# to embed jupyter lab in an iframe, uncomment the following line and edit your domain
# echo "c.ServerApp.tornado_settings = {'headers': {'Content-Security-Policy': 'frame-ancestors \'self\' [YOUR DOMAIN];'}}" >> ~/.jupyter/jupyter_lab_config.py

/home/jupyter/notebook-env/bin/jupyter-lab --collaborative --ip 0.0.0.0 --port 8080 --no-browser
