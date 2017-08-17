# DockerDemo
### docker使用
1. 从仓库中所有和<name>有关的镜像
```
docker search <name>
```
2. 列出现有的容器
```
docker ps -a
```
3. 运行一个容器
```
docker run -t -i --name <name> ubuntu:16.04 /bin/bash
```
-t 选项让Docker分配一个伪终端（pseudo-tty）并绑定到容器的标准输入上， -i 则让容器的标准输入保持打开。

4. 进入容器
```
docker attach <name>
```
5. 删除容器
```
docker rm <name>
```
6. 停止容器
```
docker stop <name>
```
7. 使用当前当前目录的dockerfile创建一个镜像
```
docker build -t <tag> .
```
