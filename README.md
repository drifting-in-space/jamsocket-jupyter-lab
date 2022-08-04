# jamsocket-jupyter-lab
Base repo for running Jupyter Lab on the Jamsocket platform

## Steps

1. Fork this repository.
2. Add your notebook(s) to the `/notebook` directory.
3. Add your notebook's python dependencies to `requirements.txt`.
4. Add `JAMSOCKET_USER` and `JAMSOCKET_TOKEN` values to your GitHub secrets. ([Contact us](mailto:hi@driftingin.space) to get Jamsocket credentials.)
5. Push your repo to your GitHub account, and your Jupyter Lab container will be automatically built and pushed to Jamsocket.
6. Get a Spawn URL from us. (Open this URL in a browser to start a new tmpenv.)

## Customization

You can optionally password-protect your notebook by editing the `JUPYTER_LAB_PASSWORD` in `run.sh`.

## To run the jupyter-lab locally for testing:

```bash
docker build -t jupyter-lab .
docker run -p 8080:8080 --env PORT=8080 -it jupyter-lab
open localhost:8080
```
