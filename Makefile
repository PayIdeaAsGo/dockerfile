build:
	docker build -f Dockerfile -t local .
run:
	docker run --rm -p 8080:80 local
up:
	docker compose up --build -d
