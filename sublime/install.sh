rm ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -s $(pwd)/Preferences.sublime-settings \
      ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

rm ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings
ln -s $(pwd)/Package\ Control.sublime-settings \
      ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings
