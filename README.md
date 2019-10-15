# docker

维护我在阿里云的各种私有&共有镜像

## 镜像类别

- 基础包项目镜像，被别的项目应用的项目。比如：`pyanalysis` `goghostex` `gobase`。action发布流程通过格式检测、编译等流程过后。将代码复制到对应项目的docker中。这个docker镜像仅仅用来被其他项目COPY代码使用。
- 服务项目镜像，需要上线的项目。将项目源代码/编译后可执行文件复制到对应的基础镜像中。并提供服务启动的`CMD` 或者 `ENTRYPOINT`
- 编译/依赖环境的镜像，比如：`gobuild` `pybase`。镜像中存放着所有依赖项目的代码。
- 可执行文件的镜像，比如：`exec`。

## 项目中维护的docker的用途

1. alpine. 所有可执行文件的基础镜像。
1. gobuild. 编译环境的镜像，用来编译所有的golang服务。
1. pybase. 维护所有项目的python第三方包。


## 发布方式

1. alpine. 打 release-alpine-v* 形式的tag发布对应的包
1. gobuild. 打 release-alpine-v* 形式的tag发布对应的包
1. pybase. 打 release-pybase-v* 形式的tag发布对应的包
1. exec. 打 release-exec-v* 形式的tag发布对应的包
