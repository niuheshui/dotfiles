#!/usr/bin/env bash

# 保存当前终端设置
old_stty_cfg=$(stty -g)

# 设置终端为非阻塞模式
stty -icanon -echo
# 隐藏光标 
tput civis

# 清屏
echo -e '\x1b[2J'

# 在这里处理按键输入
while true; do
  if read -t 0.1 -n 1 key; then
    case "$key" in
      "q") echo -e '\x1b[2J\x1b[H'; break ;;
    esac
  else
    echo -e '\x1b[H'
    #date +%T | toilet -f mono12 --filter gay
    date +%T | toilet -f mono12 
  fi

done

# 恢复终端设置
tput cnorm
stty "$old_stty_cfg"

