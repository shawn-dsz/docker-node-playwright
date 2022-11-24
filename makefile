build:
	docker build -t express-hello .

run:
	docker run -p 5000:9323 express-hello