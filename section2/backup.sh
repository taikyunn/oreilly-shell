#!/bin/bash
#バックアップするファイルと場所を入力するように促すスクリプト
#ファイルはユーザーの$HOME/binディレクトリから検索され$HOME内のディレクトリだけにバックアップできる
read -p "Which file types do you want to backup? " file_suffix
read -p "which directory do you want to backup to? " dir_name

#指定されたディレクトリが存在していなければ作成
test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name

#findコマンドは検索基準すなわち.shにマッチするファイルをコピー
#-path -prune -oオプションはバックアップディレクトリにバックアップから除外するために使用
find $HOME/bin -path $HOME/$dir_name -prune -o \
  -name "*$file_suffix" -exec cp {} $HOME/$dir_name/ \;
exit 0
