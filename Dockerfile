# OpenList on Orkestr (free Starter tier)
# Orkestr detects the port from EXPOSE and routes {slug}.orkestr.run to it.
FROM openlistteam/openlist:latest
EXPOSE 5244
ENV TZ=Asia/Shanghai
ENV UMASK=022
