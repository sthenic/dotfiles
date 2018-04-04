@echo off

REM Validate input
IF "%1"=="" GOTO ERROR_NO_USER
set TARGET_USER=%1
set BASE_PATH=C:\Users\%TARGET_USER%\AppData\Roaming\Code\User
set FILE_LIST=(settings.json keybindings.json)

for %%x in %FILE_LIST% do (
    if EXIST %%x (
        echo Removing file %%x as a precondition to symlinking.
        rm "%BASE_PATH%\%%x"
    )
    REM Create hard symbolic links to the configuration files
    mklink /H "%BASE_PATH%\%%x" "%%x"
)
GOTO EXIT

:ERROR_NO_USER
echo ERROR: No user specified.

:EXIT
echo Done.
