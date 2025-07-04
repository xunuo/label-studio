# 使用官方 Label Studio 最新镜像
FROM heartexlabs/label-studio:latest

# # 以 root 用户执行下面命令
# USER root

# # 确保目录存在，并把它的组所有者设为 root 组 (GID 0)，同时给组写权限
# # RUN mkdir -p /label-studio/data \
# #     && chown :0 /label-studio/data \
# #     && chmod g+rwx /label-studio/data

# RUN mkdir -p /label-studio/data \
#     && chown -R 1001:1001 /label-studio/data \
#     && chmod -R u+rwx /label-studio/data

# # 切回 Label Studio 默认运行用户
# USER 1001

# 暴露默认端口
EXPOSE 8080

# 启动命令（可省略，镜像已默认）
CMD ["label-studio", "start", "--host", "0.0.0.0", "--port", "8080"]
# CMD ["label-studio", "start", "--init", "--host", "0.0.0.0", "--port", "8080"]
# CMD ["sh", "-c", "label-studio migrate && label-studio start --host 0.0.0.0 --port 8080"]
