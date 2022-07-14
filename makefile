IMG=psegura
NAME=DEVenvironment

run:
	docker run -it \
		--name $(NAME) \
		-d $(IMG) \

stop:
	docker rm -f $(NAME)

re: stop run
	@true

enter:
	docker exec -it $(NAME) \
		zsh \

build:
	docker build -t $(IMG) .

push:
	docker push $(IMG)
