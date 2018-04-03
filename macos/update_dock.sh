#!/usr/bin/env bash
#
# Setup the Dock
#

# remove all existing dock items
dockutil --remove all --no-restart

# Then, add in the apps that I prefer to have there:

dockutil --add /Applications/Safari.app --no-restart
dockutil --add /Applications/Mail.app --no-restart
dockutil --add /Applications/Calendar.app --no-restart
dockutil --add /Applications/Notes.app --no-restart

dockutil --add /Applications/Messages.app --no-restart
dockutil --add /Applications/WhatsApp.app --no-restart
dockutil --add /Applications/Slack.app --no-restart
dockutil --add /Applications/Skype.app --no-restart
dockutil --add /Applications/Spotify.app --no-restart

dockutil --add /Applications/System\ Preferences.app --no-restart
dockutil --add /Applications/Utilities/Terminal.app --no-restart
dockutil --add /Applications/Sublime\ Text.app --no-restart
dockutil --add /Applications/Xcode.app --no-restart
dockutil --add /Applications/Android\ Studio.app --no-restart
dockutil --add /Applications/Rider\ 20* --no-restart
dockutil --add /Applications/Visual\ Studio.app --no-restart

dockutil --add '~/Downloads' --view fan --display stack --no-restart

killall Dock