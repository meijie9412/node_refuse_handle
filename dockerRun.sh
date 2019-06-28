#!/bin/bash
#docker 启动命令 sh dockerRun.sh

docker run --rm -it -p 7001:7001 \
--name node_refuse_handle \
--mount type=bind,\
source=/home/meijie/mj/project/node_refuse_handle,\
target=/node_refuse_handle \
node_refuse_handle