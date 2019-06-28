# 引用镜像 node
FROM node:latest

# # 执行命令，创建文件夹
RUN mkdir -p /node_refuse_handle

# # 将当前目录拷贝到镜像里
ADD ./ /node_refuse_handle

# # 指定工作目录
WORKDIR /node_refuse_handle

# 安装依赖及构建node应用
RUN npm install

# 配置系统变量，指定端口
ENV HOST 0.0.0.0
ENV PORT 7001

# 将端口7001开放
EXPOSE 7001

# 容器启动命令
CMD ["npm", "run","dev"]