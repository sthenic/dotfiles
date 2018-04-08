SOURCE_DIR="$(cd "$(dirname $0)" && pwd)"
VSCODE_DIR=~/.config/Code/User

declare -a FILES=(
    "settings.json"
    "keybindings.json"
)

for i in "${FILES[@]}"
do
    rm -f $VSCODE_DIR/"$i"
    ln -s $SOURCE_DIR/"$i" $VSCODE_DIR/"$i"
done


declare -a DIRECTORIES=(
    "snippets"
)

for i in "${DIRECTORIES[@]}"
do
    rm -rf $VSCODE_DIR/"$i"
    ln -s $SOURCE_DIR/"$i" $VSCODE_DIR/"$i"
done
