#!/bin/bash
while [ -n "$1" ]
do
  case "$1" in
    -a) echo "-a option used" ;;
    -b) echo "-b option used" ;;
    -c) echo "-c option used" ;;
    --) shift
			break ;;
		*) echo "option $1 not an option" ;;
  esac
  shift
done
#オプションに関する繰り返しはここで終わり
#パラメーターに関する繰り返しを開始
num=1
for param in $@
do
	echo "#$num: $param"
	num=$(( $num + 1))
done
