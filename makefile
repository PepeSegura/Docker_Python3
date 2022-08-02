IMG=image_name
NAME=DEVenvironment

run:
	docker run -it \
		--name $(NAME) \
#		Remove comment from next line to mount a volume, syntax: -v LocalPath:RemotePath \		
#		-v /Users/psegura-/Desktop/Python/Proyects:/home/user/Proyects \
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
