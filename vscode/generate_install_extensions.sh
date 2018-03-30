FILENAME_LINUX='install_extensions.sh'
FILENAME_WINDOWS='install_extensions.bat'
EXTENSIONS=$(code --list-extensions)

# Truncate the files
: > $FILENAME_LINUX
: > $FILENAME_WINDOWS

for EXT in $EXTENSIONS
do
    echo 'code --install-extension' $EXT >> $FILENAME_LINUX
    echo 'call code --install-extension' $EXT >> $FILENAME_WINDOWS
done
