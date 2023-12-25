#!/bin/bash

#
# macOS defaults
#
# see: https://github.com/mathiasbynens/dotfiles/blob/main/.macos
#

#---------------------------------------
# Mouse/Trackpad/Keyboard
#---------------------------------------
# ナチュラルなスクロールをOFF
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# トラックパッドの右下タップで右クリック
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

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




