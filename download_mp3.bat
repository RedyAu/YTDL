set /P _link=YouTube link: 
set _now=%date:~0,4%%date:~6,2%%date:~10,2%

if not exist "%HOMEPATH%\Music\%_now%" mkdir "%HOMEPATH%\Music\%_now%"

youtube-dl.exe "%_link%" -x --audio-format mp3 --audio-quality 320k --ffmpeg-location ffmpeg.exe -o "~/Music/%_now%/%%(title)s.%%(ext)s"

start %HOMEPATH%\Music\%_now%