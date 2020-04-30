set /P _link=YouTube link: 
set _now=%date:~0,4%%date:~6,2%%date:~10,2%

if not exist "%HOMEPATH%\Videos\%_now%" mkdir "%HOMEPATH%\Videos\%_now%"

youtube-dl.exe --list-formats "%_link%"

set /P _format=Choose format code:

youtube-dl.exe "%_link%" -f %_format% -o "%HOMEPATH%\Videos\%_now%\%%(title)s.%%(ext)s"

start %HOMEPATH%\Videos\%_now%
