#!/bin/bash
echo "複数行のコメント1"
: <<"COMMENT"
これは
複数行の
コメント
です
$(touch empty.txt)
COMMENT
