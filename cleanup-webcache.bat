@echo off
:: Script to copy all jpg, mov, 3gp and avi into c:\media-folder

IF EXIST C:\media-folder GOTO START ELSE 
GOTO CREATEFOLDER

:CREATEFOLDER

mkdir C:\media-folder\jpgs\
mkdir C:\media-folder\gifs\
mkdir C:\media-folder\mp4\
mkdir C:\media-folder\avi\
mkdir C:\media-folder\mov\


:START

forfiles /S /P "C:\New folder" /m *.jpg /c "cmd /c xcopy /F /S /Y /C @file C:\media-folder\jpgs"
forfiles /S /P "C:\New folder" /m *.mov /c "cmd /c xcopy /F /S /Y /C @file C:\media-folder\mov"
forfiles /S /P "C:\New folder" /m *.mp4 /c "cmd /c xcopy /F /S /Y /C @file C:\media-folder\mp4"
forfiles /S /P "C:\New folder" /m *.avi /c "cmd /c xcopy /F /S /Y /C @file C:\media-folder\avi"
forfiles /S /P "C:\New folder" /m *.gif /c "cmd /c xcopy /F /S /Y /C @file C:\media-folder\gifs"

:EOF

