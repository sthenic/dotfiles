SOURCE_DIR="$(cd "$(dirname $0)" && pwd)"
SUBLIME_DIR=~/.config/sublime-text-3/Packages/User

rm $SUBLIME_DIR/Preferences.sublime-settings
ln -s $SOURCE_DIR/Preferences.sublime-settings \
      $SUBLIME_DIR/Preferences.sublime-settings

rm $SUBLIME_DIR/Package\ Control.sublime-settings
ln -s $SOURCE_DIR/Package\ Control.sublime-settings \
      $SUBLIME_DIR/Package\ Control.sublime-settings

rm $SUBLIME_DIR/Default\ \(Linux\).sublime-keymap
ln -s $SOURCE_DIR/Default\ \(Linux\).sublime-keymap \
      $SUBLIME_DIR/Default\ \(Linux\).sublime-keymap
