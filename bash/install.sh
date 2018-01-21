SOURCE_DIR="$(cd "$(dirname $0)" && pwd)"

rm ~/.bash_aliases
ln -s $SOURCE_DIR/bash_aliases ~/.bash_aliases
