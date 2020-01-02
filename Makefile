include ./deploy.mk

run:
	mix phx.server

shell:
	iex -S mix phx.server

db-setup:
	mix ecto.setup

dep-get:
	mix deps.get

npm-install:
	cd assets && npm install

routes:
	mix phx.routes

migrate:
	mix ecto.migrate

clean:
	mix phx.digest.clean

