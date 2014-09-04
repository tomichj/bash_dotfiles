# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Run ./set-defaults.sh and you'll be good to go.
#
# For a massive configuration party see:
#   https://github.com/thekompanee/sinstallation/tree/master/preferences


# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0

# Terminal
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"

# Quicklook
defaults write com.apple.finder QLEnableTextSelection -bool true
defaults write com.apple.finder QLHidePanelOnDeactivate -bool true
defaults write com.apple.finder QLEnableXRayFolders 1



####################################################################
# Security

# Firewall - activate, allow signed apps, go stealth mode
path_to_firewall_binary="/usr/libexec/ApplicationFirewall/socketfilterfw"
sudo sh -c "$path_to_firewall_binary --setglobalstate true &> /dev/null"
sudo sh -c "$path_to_firewall_binary --setallowsigned true &> /dev/null"
sudo sh -c "$path_to_firewall_binary --setstealthmode true &> /dev/null"

# Gatekeeper - enable
sudo spctl --master-enable

####################################################################
# Spaces

# Do not order by most recently used
defaults write com.apple.dock mru-spaces -bool false

# Do NOT switch to space that already has an application running
defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool false
defaults write com.apple.dock workspaces-auto-swoosh -bool false

# Displays have separate spaces
defaults write com.apple.spaces spans-displays -bool false


####################################################################
# Login

# Autologin
sudo defaults delete /Library/Preferences/com.apple.loginwindow autoLoginUser 2> /dev/null
sudo rm -f /etc/kcpassword

# fast user switching
sudo defaults write NSGlobalDomain MultipleSessionEnabled -bool false

# Guest account
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -int 0

# "Power" options
sudo defaults write /Library/Preferences/com.apple.loginwindow PowerOffDisabled -bool false

# Require full name and password
defaults write com.apple.loginwindow SHOWFULLNAME -bool true



###################################################################
# Safari

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Homepage
defaults write com.apple.Safari HomePage -string "about:blank"

# Don't open "safe" files after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Disallow guest access to shared folders
sudo defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool false
sudo defaults write /Library/Preferences/com.apple.smb.server AllowGuestAccess -bool false



###################################################################
# Finder, Desktop & Screen Saver

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false

# Sidebar icon size: Small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Ask for password after 5 seconds
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

# Screen Saver: Flurry
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName -string "Flurry" path -string "/System/Library/Screen Savers/Flurry.saver" type -int 0

# Dock, ditch the glass
defaults write com.apple.dock no-glass -boolean YES
defaults write com.apple.dock hide-mirror -boolean YES


# Dock Position (left, bottom, right)
defaults write com.apple.dock orientation -string "right"

# Size - make it small
defaults write com.apple.dock tilesize -int 16;

# Dock hides when not hovered over
defaults write com.apple.dock autohide -bool true

# Dim hidden apps in dock
defaults write com.apple.dock showhidden -bool true

# Desktop icon size
defaults delete com.apple.finder DesktopViewOptions.IconSize
defaults write com.apple.finder DesktopViewOptions.IconSize -int 32

# Show path
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# File view
defaults write com.apple.finder FXPreferredViewStyle Nlsv
defaults write com.apple.finder FK_SavedViewStyle Nlsv

# Set Finder default search scope to current folder
defaults write com.apple.finder FXDefaultSearchScope SCcf

# enable screen sharing, warn on unencrypted connections
sudo defaults write /var/db/launchd.db/com.apple.launchd/overrides.plist com.apple.screensharing -dict Disabled -bool false
sudo sh -c "launchctl $loaded /System/Library/LaunchDaemons/com.apple.screensharing.plist 2> /dev/null"
defaults write com.apple.ScreenSharing dontWarnOnVNCEncryption -bool false

# Don't write .DS_Stores files
defaults write com.apple.desktopservices DSDontWriteNetworkStores true


#######################################
# Trackpad

# Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Tap with two fingers to emulate right click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

# Enable three finger tap (look up)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2

# Enable three finger drag
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# Zoom in or out
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadPinch -bool true

# Smart zoom, double-tap with two fingers
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -bool true

# Rotate
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRotate -bool true

# Notification Center
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3

# Swipe between pages with two fingers
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true

# Swipe between full-screen apps
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 2

# Enable other multi-finger gestures
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture -int 2
defaults write com.apple.dock showMissionControlGestureEnabled -bool true
defaults write com.apple.dock showAppExposeGestureEnabled -bool true
defaults write com.apple.dock showDesktopGestureEnabled -bool true
defaults write com.apple.dock showLaunchpadGestureEnabled -bool false

# Disable the Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean true


########################################################
# Transmission
# Use `~/Documents/Torrents` to store incomplete downloads
mkdir -p ${HOME}/Downloads/torrents/incomplete
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/torrents/incomplete"

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false

# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false


########################################################
# Chrome - lock it down for max privary, minimum leakage

# Do not allow any site to track my physical location.
defaults write com.google.Chrome DefaultGeolocationSetting -int 2

# Do not allow any site to show desktop notifications.
defaults write com.google.Chrome DefaultNotificationsSetting -int 2

# Do not allow sites to access my camera and microphone.
defaults write com.google.Chrome VideoCaptureAllowed -bool NO
defaults write com.google.Chrome AudioCaptureAllowed -bool NO

# Do not use a prediction service to help complete searches and URLs typed in the address bar.
defaults write com.google.Chrome SearchSuggestEnabled -bool NO

# Do not predict network actions to improve page load performance.
defaults write com.google.Chrome DnsPrefetchingEnabled -bool NO

# Do not enable Autofill to fill out web forms in a single click.
defaults write com.google.Chrome AutoFillEnabled -bool NO

# Disable Google Cloud Print proxy.
defaults write com.google.Chrome CloudPrintProxyEnabled -bool NO

# Disable submission of documents to Google Cloud Print.
defaults write com.google.Chrome CloudPrintSubmitEnabled -bool NO

# Do not allow outdated plugins.
defaults write com.google.Chrome AllowOutdatedPlugins -bool NO

# Disable the automatic search and installation of missing plugins.
defaults write com.google.Chrome DisablePluginFinder -bool YES




########################################################
# sync, kill all affected apps

killall "Finder" > /dev/null 2>&1
killall "SystemUIServer" > /dev/null 2>&1
killall "Dock" > /dev/null 2>&1

