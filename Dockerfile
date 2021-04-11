 # node镜像
 FROM node:12.16.1

 # 创建容器中的文件目录
 RUN mkdir -p /usr/src/release-app/egg-prod-003

 # 设置工作目录
 WORKDIR /usr/src/release-app/egg-prod-003
 
 # 拷贝所有源代码到工作目
 COPY . /usr/src/release-app/egg-prod-003

 # 容器对外暴露的端口号
 EXPOSE 8039
 
 RUN cd /usr/src/release-app/egg-prod-003

 RUN npm install

 # 启动并输出日志
 CMD npm start