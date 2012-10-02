# Only needs to be run once!

# Make text in Quicklook selectable
defaults write com.apple.finder QLEnableTextSelection -bool true

# Reload Quicklook
qlmanage -r
