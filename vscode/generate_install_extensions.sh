FILENAME='install_extensions.sh'
EXTENSIONS=$(code --list-extensions)

# Truncate the file.
: > $FILENAME

for EXT in $EXTENSIONS
do
    echo 'code --install-extension' $EXT >> $FILENAME
done
