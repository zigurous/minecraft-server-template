robocopy "%~dp0..\mods" "%UserProfile%\AppData\Roaming\.minecraft\mods" /E
robocopy "%~dp0..\resourcepacks" "%UserProfile%\AppData\Roaming\.minecraft\resourcepacks" /E
robocopy "%~dp0..\shaderpacks" "%UserProfile%\AppData\Roaming\.minecraft\shaderpacks" /E
pause
exit
