docker container kill rathole1
docker container prune --force
docker run -d --name rathole1 --restart unless-stopped --network="host" -v "./server.toml:/app/config.toml" rapiz1/rathole --server /app/config.toml
