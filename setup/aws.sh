#!/bin/bash

#
# AWS
#

#-------------------------------------
# グローバル変数
#-------------------------------------
AWS_CONFIG_DIR=~/.aws

#-------------------------------------
# 準備
#-------------------------------------
if [ ! -d $AWS_CONFIG_DIR ]; then
  mkdir $AWS_CONFIG_DIR
fi

#-------------------------------------
# 設定ファイル作成
#-------------------------------------
# ~/.aws/config
cat << EOT > $AWS_CONFIG_DIR/config
[default]
output = json
region = ap-northeast-1
EOT

# ~/.aws/credentials
cat << EOT > $AWS_CONFIG_DIR/credentials
[default]
aws_access_key_id = xxxxxxxxxxxxxxxxxxx
aws_secret_access_key = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
EOT

chmod 0600 $AWS_CONFIG_DIR/config
chmod 0600 $AWS_CONFIG_DIR/credentials
