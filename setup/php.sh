#!/bin/bash

#
# PHP
#

#----------------------------------------------
# グローバル変数
#----------------------------------------------
# バージョンを変更する
# [OLD] PHP_INI=/usr/local/etc/php/8.3/php.ini
PHP_INI=/opt/homebrew/etc/php/8.3/php.ini

#----------------------------------------------
# 設定変更
#----------------------------------------------
# backup
cp $PHP_INI $PHP_INI.back

# 置換
sed -i -e "s/^;date.timezone =/date.timezone = Asia\/Tokyo/" $PHP_INI
sed -i -e "s/^;mbstring.language = Japanese/mbstring.language = Japanese/" $PHP_INI

