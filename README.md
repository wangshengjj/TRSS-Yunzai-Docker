# TRSS-Yunzai-Docker
Docker版TRSS-Yunzai构建仓库

## 教程链接：https://www.wsjj.top/archives/trss

```
docker run -itd --name yunzai --restart=always -v /you/path/:/Yunzai --net=host trss-yunzai:v1.0
```

```
docker run -itd --name go-cqhttp --restart=always -e SIGN_SERVER_URL="you sign server url" -v /you/path/:/data wangshengjj/trss-go-cqhttp:v1.0
```

![wangshengjj](https://www.wangshengjj.work/upload/2022/10/logo3.png)
