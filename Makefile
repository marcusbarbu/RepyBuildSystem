all:
	@echo "Specify a target"

build:
	docker build -t seattle .

run: build
	docker run --rm -it seattle

autorun:
	docker build -q -t seattle-auto -f Dockerfile.auto --build-arg SECURE_LAYER=$(SECURE) --build-arg TESTER=$(TESTER) . 
	docker run --rm seattle-auto
