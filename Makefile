.PHONY:pybase gobuild exec

pybase:
	cd pybase && docker build --rm -t registry.cn-hongkong.aliyuncs.com/strengthening/pybase .
	docker push registry.cn-hongkong.aliyuncs.com/strengthening/pybase

gobuild:
	cd gobuild && docker build --rm -t registry.cn-hongkong.aliyuncs.com/strengthening/gobuild .
	docker push registry.cn-hongkong.aliyuncs.com/strengthening/gobuild

exec:
	cd exec && docker build --rm -t registry.cn-hongkong.aliyuncs.com/strengthening/exec .
	docker push registry.cn-hongkong.aliyuncs.com/strengthening/exec
