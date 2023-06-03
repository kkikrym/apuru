include .env

up:
	sudo docker compose up -d

down:
	sudo docker compose down

restart:
	sudo docker compose down
	sudo docker compose up -d

ps:
	sudo docker ps -a


reng:
	sudo docker restart nginx
ng:
	sudo docker exec -it nginx bash
db:
	sudo docker exec -it db psql -h localhost -p 5432 -U ${POSTGRES_USER} -d ${POSTGRES_DB}

# For the first time
ini:
	sudo docker compose build
	sudo docker compose up -d
	sudo docker exec -it python python -m manage makemigrations accounts
	sudo docker exec -it python python -m manage makemigrations
	sudo docker exec -it python python -m manage migrate

# Django container
py:
	sudo docker exec -it python bash

mgs:
	sudo docker exec -it python python -m manage makemigrations

migrate:
	sudo docker exec -it python python -m manage migrate

repy:
	sudo docker restart python

py-rebuild: # When new python package added and have to pip install
	sudo docker rmi alfind_python
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
	sudo docker stop nginx
