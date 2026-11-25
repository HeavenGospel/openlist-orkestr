# openlist-orkestr

OpenList 跑在 Orkestr 免费档上。

- 镜像：`openlistteam/openlist:latest`
- 端口：5244（Dockerfile 里 EXPOSE，Orkestr 按它路由到 `openlist.orkestr.run`）
- 管理员密码：在 Orkestr 控制台的环境变量里用 `OPENLIST_ADMIN_PASSWORD` 设置，不放在仓库里
- 时区：`TZ=Asia/Shanghai`

注意：
- 免费档闲置 30 分钟会休眠，下一次访问时唤醒（首次访问稍慢）。
- 容器内文件每次重新部署都会重置，重要的配置请放在数据库插件或对象存储里；网盘挂载在 OpenList 后台“管理 → 存储”里添加。
