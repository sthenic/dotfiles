SOURCE_DIR="$(cd "$(dirname $0)" && pwd)"
SUBLIME_DIR=~/.config/sublime-text-3/Packages/User

declare -a FILES=(
    "Preferences.sublime-settings"
    "Package Control.sublime-settings"
    "Default (Linux).sublime-keymap"
    "Markdown.sublime-settings"
)

for i in "${FILES[@]}"
do
    rm $SUBLIME_DIR/"$i"
    ln -s $SOURCE_DIR/"$i" $SUBLIME_DIR/"$i"
done
