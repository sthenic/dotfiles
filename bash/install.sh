SOURCE_DIR="$(cd "$(dirname $0)" && pwd)"

declare -a IFILES=(
    "bash_aliases"
)
declare -a OFILES=(
    ".bash_aliases"
)

for i in "${IFILES[@]}"
do
    rm -f ~/"${OFILES[@]}"
    ln -s $SOURCE_DIR/"$i" ~/"${OFILES[@]}"
done
