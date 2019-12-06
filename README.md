# docker 使用手册

维护我在阿里云的各种私有&共有镜像，以及不同类型项目生成docker镜像的原则。


## 镜像类别

1. 基础包镜像，被别的项目引用的项目。比如：`pyanalysis` `pyghostbt` `goghostex` `gobase`。Action发布流程通过格式检测、编译等流程过后。将代码复制到对应项目的docker中。这个docker镜像仅仅用来被其他项目COPY代码使用。
1. 线上服务镜像，需要上线的项目。将项目源代码/编译后可执行文件复制到对应的基础镜像中。并提供服务启动的`CMD` 或者 `ENTRYPOINT`
1. 编译/依赖环境的镜像，比如：`gobuild` `pybuild`。镜像中存放着所有依赖项目的代码。
1. 可执行文件的镜像，比如：`exec`。


## 项目中维护的docker的用途

1. exec. 所有可执行文件的基础镜像。
1. gobuild. golang的编译环境的镜像，用来启动编译所有的golang服务。
1. pybuild. python的编译环境的镜像，用来启动编译所有的python服务。


## 发布方式

1. exec. 打 release-exec-v* 形式的tag发布对应的包
1. gobuild. 打 release-alpine-v* 形式的tag发布对应的包


## 维护新docker项目步骤

1. 创建新的文件夹。编写对应的Dockerfile。
1. 在Makefile中编写对应的make命令。
1. 在阿里云镜像服务中建立对应的项目。
1. 在.github/workflows文件夹中创建对应项目release配置文件。

