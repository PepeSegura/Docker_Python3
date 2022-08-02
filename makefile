IMG=image_name
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

#		Put the next line bewtween line 6 & 7 to mount a volume. Syntax: -v LocalPath:RemotePath \
#		-v /Users/psegura-/Desktop/Python/Proyects:/home/user/Proyects \
