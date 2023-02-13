#!/bin/bash
# ユーザー定義変数・配列
arr=(1 2 3 4 5)
echo ${arr[*]} #配列全ての要素を表示
unset arr[1] #配列の2番目の要素を削除
echo ${arr[*]}
unset arr #配列の全ての要素を削除
echo $arr
exit 0
