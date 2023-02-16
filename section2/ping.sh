#!/bin/bash
#サーバーにpingコマンドを送るスクリプト
read -p "Which server shoud be pinged? " server_addr
#pingコマンドを3回送るorServerDeadを送信するか？
ping -c3 $server_addr 2>&1 > /dev/null || echo "Server Dead"
exit 0
