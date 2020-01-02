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

release:
	mix deps.get --only prod
	MIX_ENV=prod mix compile
	npm run deploy --prefix ./assets
	mix phx.digest
	MIX_ENV=prod mix distillery.release --no-tar

clean:
	mix phx.digest.clean

