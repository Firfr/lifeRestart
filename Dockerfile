FROM node:20.19.0-alpine3.21 AS build

WORKDIR /app
COPY . .

RUN npm config set registry https://registry.npmmirror.com && \
    npm install && \
    npm run build && \
    npm run xlsx2json

FROM lipanski/docker-static-website:2.4.0
# 静态文件路径 /home/static
COPY --from=build /app/template/public /home/static/
COPY --from=build /app/public/data /home/static/data
#CMD ["/busybox-httpd", "-f", "-v", "-p", "3000", "-c", "httpd.conf"]

# docker build -t firfe/life_restart:2.1.0 .
