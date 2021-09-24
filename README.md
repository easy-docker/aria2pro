# Aria2 Pro

此镜像在[原项目](https://github.com/P3TERX/Aria2-Pro-Docker)基础上，去除了强制指定下载目录
# 使用
快速开始
````
mkdir -p ~/.aria2pro
docker pull ghostry/aria2pro

name=aria2pro
token=654321

docker container stop $name
docker container rm $name

docker run -d \
    --name $name \
    --restart unless-stopped \
    --log-opt max-size=1m \
    -e PUID=$UID \
    -e PGID=$GID \
    -e UMASK_SET=022 \
    -e RPC_SECRET=$token \
    -e RPC_PORT=6800 \
    -p 6800:6800 \
    -e LISTEN_PORT=6888 \
    -p 6888:6888 \
    -p 6888:6888/udp \
    -v ~/.aria2pro:/config \
    -v ~/下载:/root/Download \
    ghostry/aria2pro
docker exec -it $name sh -c 'chmod 777 /root;chmod 777 /root/Download'

````

[更多使用说明](https://p3terx.com/archives/docker-aria2-pro.html)
