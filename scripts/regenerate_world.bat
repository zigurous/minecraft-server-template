@echo off
setlocal

:PROMPT
set /P AREYOUSURE=Regenerating the world will permanently delete the current server data. This is very destructive! Are you sure you want to continue? (Y/[N])?
if /I "%AREYOUSURE%" neq "Y" goto END

cd ../map/
del /s /q *.*
cd ../server/logs/
del /s /q *.*
cd ../world/
del /s /q *.*
cd ../
del usercache.json
start javaw -jar server.jar

:END
endlocal
pause
exit
