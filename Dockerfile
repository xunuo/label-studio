# 使用官方 Label Studio 最新镜像
FROM heartexlabs/label-studio:latest

# 暴露默认端口
EXPOSE 8080

# 启动命令（可省略，镜像已默认）
# CMD ["label-studio", "start", "--host", "0.0.0.0", "--port", "8080"]
CMD ["sh", "-c", "label-studio migrate && label-studio start --host 0.0.0.0 --port 8080"]
