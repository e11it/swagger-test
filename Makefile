validate:
	swagger flatten ./index.yml --output=./swagger.json && \
  	swagger validate ./swagger.json

build:
	swagger flatten ./index.yml --output=./swagger.json

serve:
	swagger serve ./swagger.json --port=8080 --base-path=/ -F=redoc --no-open

server:
	swagger generate servger -f ./swagger.json -A meta --target=./gen/swagger