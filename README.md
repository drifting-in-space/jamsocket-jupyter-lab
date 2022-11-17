# jamsocket-jupyter-lab
Base repo for running Jupyter Lab on the Jamsocket platform

## Steps

1. Fork this repository.
2. Add your notebook(s) to the `/notebook` directory.
3. Add your notebook's python dependencies to `requirements.txt`.
4. Set your account name as the `JAMSOCKET_ACCOUNT` value in your GitHub secrets.
5. Generate an access token at [app.jamsocket.com/settings](https://app.jamsocket.com/settings) and set it as the `JAMSOCKET_TOKEN` value in your GitHub secrets. ([Contact us](https://forms.gle/2xjUy4AmR5tdj42Y7) to get a Jamsocket account if you don't have one.)
6. Push your repo to your GitHub account, and your Jupyter Lab container will be automatically built and pushed to Jamsocket.
7. Get a Spawn URL from us. (Open this URL in a browser to start a new tmpenv.)

## Customization

You can optionally password-protect your notebook by editing the `JUPYTER_LAB_PASSWORD` in `run.sh`.

## To run the jupyter-lab locally for testing:

```bash
docker build -t jupyter-lab .
docker run -p 8080:8080 --env PORT=8080 -it jupyter-lab
open localhost:8080
```
