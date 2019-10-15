.PHONY:alpine gobuild

alpine:
	cd alpine/3 && docker build --rm -t registry.cn-hongkong.aliyuncs.com/ghostex/alpine:3 .
	docker push registry.cn-hongkong.aliyuncs.com/ghostex/alpine:3
	docker tag registry.cn-hongkong.aliyuncs.com/ghostex/alpine:3 registry.cn-hongkong.aliyuncs.com/ghostex/alpine
	docker push registry.cn-hongkong.aliyuncs.com/ghostex/alpine

gobuild:
	cd gobuild/1 && docker build --rm -t registry.cn-hongkong.aliyuncs.com/strengthening/gobuild:1 .
	docker push registry.cn-hongkong.aliyuncs.com/strengthening/gobuild:1 
