
deploy:
	rsync -avz --progress _build/prod/rel/yachat rodrigo@yachat.online:~/rel
	ssh rodrigo@yachat.online "./rel/yachat/bin/yachat migrate"
	ssh rodrigo@yachat.online "./rel/yachat/bin/yachat seed"
	ssh rodrigo@yachat.online "./rel/yachat/bin/yachat restart"

