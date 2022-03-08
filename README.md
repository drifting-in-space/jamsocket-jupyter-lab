# jamsocket-jupyter-lab
Scaffold for setting up a hosted jupyter notebook on the Jamsocket platform

## To run a collaborative jupyter-lab on Jamsocket via a spawn webpage:

First, make sure you're logged in with the Jamsocket CLI and have created a service named `jupyterlab`.

```sh
npx jamsocket login
npx jamsocket service create jupyterlab
```

Then, build the jupyterlab docker image and push it to your `jupyterlab` Jamsocket service.

```sh
docker build . -t jupyterlab
npx jamsocket push jupyterlab jupyterlab
```

(Note: if you are building on an ARM-based processor - like Apple Silicon - you may need to add `--platform=linux/amd64` to the docker build command.)

After building and pushing the jupyterlab image to jamsocket, generate a spawn token using the CLI. Jupyter lab runs on port 8888 by default, so we need to tell Jamsocket to listen on 8888 here.

```sh
npx jamsocket token create jupyterlab --port 8888
```

Take the returned token and replace `[SPAWN TOKEN HERE]` in `spawn.html`.

Try it out locally by running a local server from this directory:

```sh
npx serve
```

And then visit `localhost:3000/spawn.html` in your browser.

## Customization

Place whatever notebook code you'd like to run in the `notebook` directory, and add any pip-installable dependencies to `requirements.txt`.

By default, this Jupyter Lab image should run on port 8888, so you need to pass a `--port` flag to the `jamsocket spawn` or `jamsocket token create` command to run on that port. (By default, Jamsocket listens on port 8080.)

Provide a password as the `JAMSOCKET_JUPYTER_TOKEN` environment variable. This is the password the jupyter notebook server will expect the user to input through the UI when first accessing the notebook.

## To spawn the jupyterlab from the cli:

```sh
npx jamsocket spawn jupyterlab --port 8888 --env '{"JAMSOCKET_JUPYTER_TOKEN":"[SET JUPYTER PASSWORD HERE]"}'
```

## To run a collaborative jupyter-lab locally:

```sh
./run-locally.sh
```
