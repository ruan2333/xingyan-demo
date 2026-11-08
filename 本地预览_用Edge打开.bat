@echo off
set "EDGE=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
if exist "%EDGE%" goto run
set "EDGE=C:\Program Files\Microsoft\Edge\Application\msedge.exe"
if exist "%EDGE%" goto run
echo Edge not found. Right-click index.html and choose "Open with".
pause
exit /b

:run
start "" "%EDGE%" "%~dp0index.html"
exit /b
