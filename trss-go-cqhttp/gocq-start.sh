#! /bin/bash

cd /data
if [ ! -f config.yml ]; then
    echo '未找到config.yml 正在自动生成'
    echo '3\n\n' | go-cqhttp
    #故意不配置账号密码，让他自动生成设备文件
    go-cqhttp &> /dev/null
    sed -r -i 's|("protocol":)6|\12|' ./device.json
    sed -i '/uin/d' ./config.yml
    sed -i '/password/d' ./config.yml
    sed -i '/post-format: string/s|string|array|' ./config.yml
    sed -i '/universal: ws:\/\/your_websocket_universal.server/s|ws:\/\/your_websocket_universal.server|ws:\/\/localhost:2536/go-cqhttp|' ./config.yml
    sed -i "/sign-server: '-'/s|'-'|'$SIGN_SERVER_URL'|" ./config.yml
    go-cqhttp
else
    go-cqhttp
fi
