#!/bin/bash

#
# macOS defaults
#
# see: https://github.com/mathiasbynens/dotfiles/blob/main/.macos
#

#---------------------------------------
# Hotname
#---------------------------------------
MYHOSTNAME='mba2020'
sudo cutil --set ComputerName $HOSTNAME
sudo scutil --set LocalHostName $HOSTNAME
sudo scutil --set HostName $HOSTNAME

#---------------------------------------
# Mouse/Trackpad/Keyboard
#---------------------------------------
# ナチュラルなスクロールをOFF
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# タップでクリック
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write -g com.apple.mouse.tapBehavior -bool true

# マウスカーソルの速度調整（default:1.5）
defaults write -g com.apple.mouse.scaling 3.0
defaults write -g com.apple.trackpad.scaling 3.0

# キーボードのリピート速度
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

#---------------------------------------
# Dock
#---------------------------------------
# Dock を自動的に非表示
defaults write com.apple.dock autohide -bool true

# Dockをパッと表示
defaults write com.apple.dock autohide-delay -float 0

# 最近使ったアプリを非表示
defaults write com.apple.dock show-recents -bool false

# Dockにウィンドウをしまう際のアニメ
defaults write com.apple.dock mineffect -string "scale"


#---------------------------------------
# Screen
#---------------------------------------
# スリープ解除後などにパスワード
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# スクリーンショットはデスクトップに保存
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# スクリーンショットの保存形式 ( BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"


#---------------------------------------
# Hot Corners
#---------------------------------------

#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen

# 右下 → スクリーンセーバー
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0


#---------------------------------------
# Finder
#---------------------------------------
# HDD,サーバー,外部メディアをデスクトップに表示
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# ファイル名をすべて表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# サーバーや外部メディアに.DS_Storeを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# ~/Libraryを表示
#chflags nohidden ~/Library && xattr -d com.apple.FinderInfo ~/Library




