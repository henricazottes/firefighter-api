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
