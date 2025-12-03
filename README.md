# gen_ea_rl
Generative Design using Reinforcement Learning

## Installation/Running with Docker
Ensure you have docker, docker compose and docker-nivida-toolkit installed.

```
docker compose up dev -d
docker exec -it gen_rl-dev-1 bash
```

You can also set up VSCode to now work within this container.

## Running with uv
Not tested as much, may lack some system dependecies that come with Docker base image.

```
uv venv --python 3.12 --seed
uv pip install gen_rl
```