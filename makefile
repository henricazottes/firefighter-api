include .env
export

.PHONY: build

start:
	make startw -j2

startw: watch run

watch:
	./gradlew build --continuous

run:
	./gradlew bootRun

setup-database:
	mysql -e "DROP DATABASE IF EXISTS ${DB_NAME};"
	mysql -e "CREATE DATABASE ${DB_NAME};"
	mysql -e "CREATE USER IF NOT EXISTS ${DB_USER}@localhost IDENTIFIED BY '${DB_PASSWORD}';"
	mysql -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost';"
	mysql -e "FLUSH PRIVILEGES;"
	mysql -D ${DB_NAME} < ./src/db/setup.sql

build:
	./gradlew build
	docker build --build-arg JAR_FILE=build/libs/\*.jar -t henricazottes/firefighter-api .

up:
	docker-compose up
