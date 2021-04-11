 # node镜像
 FROM 192.168.10.233:8803/receivable-web-base:v3
 
 # 这个是容器中的文件目录
 RUN mkdir -p /usr/src/release-app/egg-r-012

 # 设置工作目录
 WORKDIR /usr/src/release-app/egg-r-012
 
 # 拷贝所有源代码到工作目
 COPY . /usr/src/release-app/egg-r-012

 # 容器对外暴露的端口号
 EXPOSE 7001

 # 启动并输出日志
 CMD npm start