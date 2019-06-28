#!/bin/bash
#mysql 启动命令 sh mysqlRun.sh

docker run \
--name mysql \
-p 3306:3306 \
-v /home/meijie/mj/project/mysql/conf:/etc/mysql/conf.d \
-v /home/meijie/mj/project/mysql/data:/var/lib/mysql \
-v /home/meijie/mj/project/mysql/log:/log \
-v /home/meijie/mj/project/mysql/database_dump.txt:/database_dump.txt \
-e MYSQL_ROOT_PASSWORD=123456 \
-d \
mysql:5.7
