# 使用官方 Label Studio 最新镜像
FROM heartexlabs/label-studio:latest

# 切换到 root，创建并修改挂载目录属主
USER root

# 确保目录存在并让 label-studio 运行用户拥有写权限
RUN mkdir -p /label-studio/data \
    && chown -R 1000:1000 /label-studio/data

# 切回默认用户（镜像里一般是 uid 1000）
USER 1000

# 暴露默认端口
EXPOSE 8080

# 启动命令（可省略，镜像已默认）
CMD ["label-studio", "start", "--init", "--host", "0.0.0.0", "--port", "8080"]
# CMD ["sh", "-c", "label-studio migrate && label-studio start --host 0.0.0.0 --port 8080"]
