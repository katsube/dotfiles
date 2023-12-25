#!/bin/bash

#
# Init Node.js
#

#----------------------------------------
# 初期設定
#----------------------------------------
nodebrew setup
# echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zshrc


#----------------------------------------
# 安定版をインストール
#----------------------------------------
nodebrew install-binary stable
nodebrew use stable

# シェルの補完
# npm completion >> ~/.zshrc


#----------------------------------------
# モジュールをインストール
#----------------------------------------
list=(
  'nodemon'
  'serve'
  'forever'
  'npm-check-updates'
  'uglify-js'
  'clean-css-cli'
  'firebase-tools'
  'serverless'
  'create-react-app'
  'gpwd'
  'showip-cli'
)

for module in ${list[@]}; do
  echo "##### install ${module} #####"
  npm install -g ${module}
done


