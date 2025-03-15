#!/bin/bash

#
# Python
#

#----------------------------------------------
# グローバル変数
#----------------------------------------------
# venv用ディレクトリ
PYTHON_DIR="$HOME/.pyenv"

#----------------------------------------------
# 設定
#----------------------------------------------
# venv用ディレクトリ作成
if [ ! -d $PYTHON_DIR ]; then
  mkdir $PYTHON_DIR
fi

# venv初期化
if [ ! -d $PYTHON_DIR/bin ]; then
  python3 -m venv $PYTHON_DIR
fi

#----------------------------------------------
# ヒント出力
#----------------------------------------------
echo <<MESSAGE
# VSCodeの設定
python.VenvPathの設定で $PYTHON_DIR を指定してください
MESSAGE