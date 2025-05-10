# Life Restart

<a href="https://discord.gg/U3qrf49NMQ"><img src="https://img.shields.io/discord/883382868427014255?color=%23FEE75C&label=Discord&logo=discord&logoColor=white&style=for-the-badge" /></a>

[English](./README-en.md) | 简体中文

## 简介

- Game Life Restart

## 部署说明

首先感谢原作者的开源。[原项目地址](https://github.com/VickScarlet/lifeRestart)

有需要帮忙部署这个项目的朋友,一杯奶茶,即可程远程帮你部署，需要可联系。  
微信号 `E-0_0-`  
闲鱼搜索用户 `明月人间`  
或者邮箱 `firfe163@163.com`  
如果这个项目有帮到你。欢迎start。

有其他的项目的汉化需求，欢迎提issue。或其他方式联系通知。

### 镜像

从阿里云或华为云镜像仓库拉取镜像，注意填写镜像标签，镜像仓库中没有`latest`标签

容器内部端口 3000

```bash
swr.cn-north-4.myhuaweicloud.com/firfe/life_restart:2.1.0
```

### docker run 命令部署

```bash
docker run -d \
--name life_restart \
--network bridge \
--restart always \
--log-opt max-size=1m \
--log-opt max-file=3 \
-p 3000:3000 \
swr.cn-north-4.myhuaweicloud.com/firfe/life_restart:2.1.0
```
### compose 文件部署 👍推荐

```yaml
#version: '3.9'
services:
  life_restart:
    container_name: life_restart
    image: swr.cn-north-4.myhuaweicloud.com/firfe/life_restart:2.1.0
    network_mode: bridge
    restart: always
    logging:
      options:
        max-size: 1m
        max-file: '3'
    ports:
      - 3000:3000
```

## 修改说明


`./README.md` 增加 `## 部署说明`、`## 修改说明`、`## 效果截图` 部分。

增加目录 `./图片`
新增文件 `./本地调试命令记录.md` 、重新 `./Dockerfile`

## 效果截图

<img src="" width="500" />


## 使用

<details>
<summary><strong>网页版</strong></summary>
<br />

1. 下载项目代码。

```bash
git clone https://github.com/VickScarlet/lifeRestart.git my-project
cd my-project
```

2. 进入目录安装依赖。

```bash
pnpm install
```

或者

```bash
npm install
```

3. 启动本地服务器。

```bash
pnpm dev
```

或者

```bash
npm run dev
```

4. 启动完成后会自动打开浏览器访问 [http://localhost:5173](http://localhost:5173)。

</details>

<details>
<summary><strong>控制台版本</strong></summary>
<br />

```bash
node repl
```

</details>

## 其他版本

<details>
<summary><strong>版本列表</strong></summary>
<br />

- Cocos版：[gameall3d/LifeRestart_Cocos](https://github.com/gameall3d/LifeRestart_Cocos)

</details>

> 更多信息请参考 [官网文档](https://liferestart.syaro.io/)。
