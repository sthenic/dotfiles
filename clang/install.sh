SOURCE_DIR="$(cd "$(dirname $0)" && pwd)"

declare -a IFILES=(
    "clang-format"
)
declare -a OFILES=(
    ".clang-format"
)

for i in "${IFILES[@]}"
do
    rm -f ~/"${OFILES[@]}"
    ln -s $SOURCE_DIR/"$i" ~/"${OFILES[@]}"
done
