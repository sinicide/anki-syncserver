APP_VERSION ?= "23.12.1"
APP_NAME ?= "anki-syncserver"

build:
	docker build --no-cache -t ${APP_NAME}:${APP_VERSION} .