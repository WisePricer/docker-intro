build:
	docker build --tag intro .

run:
	docker run --publish 5000:5000 intro

pull:
	docker pull mysql:5.5

rundb:
	docker run --detach --publish-all --env MYSQL_ROOT_PASSWORD=qwerty123 --name mysql mysql:5.5

createdb:
	echo 'create database db' | mysql -uroot -pqwerty123 --protocol tcp --port $$MYSQL_PORT

run-linked:
	docker run --link mysql:mysql --publish 5000:5000 intro
