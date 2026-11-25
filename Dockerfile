# OpenList on Orkestr (free Starter tier)
# Orkestr detects the port from EXPOSE and routes {slug}.orkestr.run to it.
# Orkestr runs the container as a non-root user that is NOT the image's
# openlist user (UID 1001), so /opt/openlist/data must be world-writable
# or OpenList v4.1.0+ refuses to start ("no write permission for ./data").
FROM openlistteam/openlist:latest
USER root
RUN chmod 777 /opt/openlist/data
EXPOSE 5244
ENV TZ=Asia/Shanghai
ENV UMASK=022
