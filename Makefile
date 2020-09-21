NAME=django_tutorial

start:
	@docker run -p 8000:8000 \
	-v $(PWD):/usr/src/app \
	-it --rm $(NAME) bash

build:
	docker build -t $(NAME) .

image := $(shell docker images -q $(NAME))
container := $(shell docker ps -a -q --filter ancestor=$(NAME))

check:
ifeq ($(image),)
	@echo "$(NAME) image has not been built yet."
	@echo "please execute 'make build'."
else
	@echo "$(NAME) image already exists."
	@docker images $(NAME)
ifneq ($(container),)
	@echo; echo "$(NAME) container also exists."
	@docker ps -a --filter ancestor=$(NAME)
else
	@echo; echo "please execute 'make' or 'make start'."
endif
endif

clean:
ifneq ($(image),)
	docker rmi $(image) 
endif

rebuild: clean build
