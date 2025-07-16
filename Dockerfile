# 使用官方 Label Studio 最新镜像
FROM heartexlabs/label-studio:latest

# 暴露默认端口
EXPOSE 8080
EXPOSE 8081  # 额外暴露 data 目录的访问端口

# 启动命令：同时运行 Label Studio 和静态文件服务（data 目录）
CMD ["bash", "-c", "label-studio start --host 0.0.0.0 --port 8080 & python3 -m http.server 8081 --directory /label-studio/data"]
