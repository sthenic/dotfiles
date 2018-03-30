declare -a FILES=(
    "Preferences.sublime-settings"
    "Package Control.sublime-settings"
    "Default (Linux).sublime-keymap"
    "Markdown.sublime-settings"
)

for i in "${FILES[@]}"
do
    echo $i
done
