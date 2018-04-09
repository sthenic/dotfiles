@echo off

REM Validate input
IF "%1"=="" GOTO ERROR_NO_USER
set TARGET_USER=%1
set BASE_PATH=C:\Users\%TARGET_USER%\AppData\Roaming\Code\User
set FILE_LIST=(settings.json keybindings.json)
set DIR_LIST=(snippets)

for %%x in %FILE_LIST% do (
    if EXIST %%x (
        echo Removing file "%%x" as a precondition to symlinking.
        del "%BASE_PATH%\%%x"
    )
    rem Create a hard symbolic link to the configuration file.
    mklink /H "%BASE_PATH%\%%x" "%%x"
)

for %%x in %DIR_LIST% do (
    if EXIST %%x (
        echo Removing directory "%%x" as a precondition to symlinking.
        rd /S /Q "%BASE_PATH%\%%x"
    )
    rem Create a hard symbolic link to the directory.
    mklink /D "%BASE_PATH%\%%x" "%~dp0%%x"
)
GOTO EXIT

:ERROR_NO_USER
echo ERROR: No user specified.

:EXIT
echo Done.
