#!/bin/bash
# basenameコマンドで名前のみ抽出
echo "You sre using $(basename $0)"
# バッククォートで同じ結果
echo "You sre using `basename $0`"
echo "Hello $*"
exit 0
