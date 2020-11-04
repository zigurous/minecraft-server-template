setlocal

:PROMPT
set /P AREYOUSURE=Regenerating the world will permanently delete the current server data. This is very destructive! Are you sure you want to continue? (Y/[N])?
if /I "%AREYOUSURE%" neq "Y" goto END

del /s /q "%~dp0..\map\*.*"
del /s /q "%~dp0..\server\logs\*.*"
del /s /q "%~dp0..\server\world\*.*"
del "%~dp0..\server\usercache.json"
cd "%~dp0..\server\"
start javaw -jar server.jar

:END

endlocal
pause
exit
