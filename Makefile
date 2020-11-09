.PHONY:pybase pybuild gobuild exec

pybase:
	cd pybase && docker build --rm -t registry.cn-hongkong.aliyuncs.com/strengthening/pybase .
	docker push registry.cn-hongkong.aliyuncs.com/strengthening/pybase

pybuild:
	cd pybuild && docker build --rm -t registry.cn-hongkong.aliyuncs.com/strengthening/pybuild .
	docker push registry.cn-hongkong.aliyuncs.com/strengthening/pybuild
	docker tag registry.cn-hongkong.aliyuncs.com/strengthening/pybuild registry.cn-hangzhou.aliyuncs.com/strengthening/pybuild
	docker push registry.cn-hangzhou.aliyuncs.com/strengthening/pybuild
	
gobuild:
	cd gobuild && docker build --rm -t registry.cn-hongkong.aliyuncs.com/strengthening/gobuild .
	docker push registry.cn-hongkong.aliyuncs.com/strengthening/gobuild

exec:
	cd exec && docker build --rm -t registry.cn-hongkong.aliyuncs.com/strengthening/exec .
	docker push registry.cn-hongkong.aliyuncs.com/strengthening/exec
