build: build-image
run: run-image

build-image:
	make -C roger-service
	make -C roger-operator
	make -C roger-dq-details
	make -C roger-gateway

run-image:
	docker-compose up --remove-orphan
