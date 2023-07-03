# /bin/bash
redis-server --daemonize yes &> /dev/null
if [ ! -f /Yunzai ]; then
    echo '未检测到Yunzai 正在初始化'
    cp -r ~/Yunzai/* /Yunzai
    cd /Yunzai && node app
else
    cd /Yunzai && node app

fi
