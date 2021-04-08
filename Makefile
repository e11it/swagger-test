build:
	swagger flatten --with-expand ./index.yml --output=./swagger.json

serve:
	swagger serve ./swagger.json --port=8080 --base-path=/ -F=redoc --no-open