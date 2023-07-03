FROM ubuntu:20.04
MAINTAINER wangshengjj 2644373507@qq.com
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
WORKDIR /Yunzai
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && sed -i s@/security.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && apt-get update -y && apt install -y curl git redis-server chromium-browser language-pack-zh-hans libgtk-3-0 libasound2 libgbm1 libnss3
#启动redis和nodejs
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs && node -v; npm -v
#安装TRSS-yunzai
RUN cd ~ && git clone https://gitee.com/TimeRainStarSky/Yunzai && cd ~/Yunzai && git clone --depth 1 https://gitee.com/yoimiya-kokomi/miao-plugin plugins/miao-plugin && git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai-genshin.git plugins/genshin && git clone --depth=1 https://gitee.com/guoba-yunzai/guoba-plugin.git ./plugins/Guoba-Plugin/
RUN cd ~/Yunzai && npm --registry=https://registry.npmmirror.com install pnpm -g && pnpm config set registry https://registry.npmmirror.com && pnpm install -P
COPY start.sh /
EXPOSE 2536/tcp
EXPOSE 50831/tcp
CMD bash /start.sh
