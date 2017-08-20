#!/bin/bash
cd /usr/local/etc/shadowsocks.d
cp -f {query}.json ../shadowsocks-libev.json
killall ss-local
echo {query}
