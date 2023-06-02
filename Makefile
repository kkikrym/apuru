include .env

up:
	sudo docker compose up -d

down:
	sudo docker compose down

restart:
	sudo docker compose down
	sudo docker compose up -d

ps:
	docker ps -a


reng:
	docker restart nginx
ng:
	docker exec -it nginx bash
db:
	docker exec -it postgres psql -h localhost -p 5432 -U ${POSTGRES_USER} -d ${POSTGRES_DB}

# For the first time
ini:
	sudo docker compose build
	sudo docker compose up -d
	docker exec -it python python -m manage makemigrations accounts
	docker exec -it python python -m manage makemigrations
	docker exec -it python python -m manage migrate

# Django container
py:
	docker exec -it python bash

mgs:
	docker exec -it python python -m manage makemigrations

migrate:
	docker exec -it python python -m manage migrate

repy:
	docker restart python

py-rebuild: # When new python package added and have to pip install
	docker rmi alfind_python
	sudo docker compose build
	sudo docker compose up -d

rmmigrations:
	rm -rf src/backend/*/migrations/*

rmcache:
	rm -rf src/backend/__pycache__
	rm -rf src/backend/*/__pycache__

# About remote server
remote:
	ssh -i "${PEM_FILE_PATH}" ${REMOTE_USER}@${REMOTE_IP} -p ${REMOTE_PORT} -t "cd ${DEFAULT_DIR}; bash"

remotedep:
	git pull
	sudo docker compose down
	sudo docker compose up -d

maintain:
	docker stop nginx
