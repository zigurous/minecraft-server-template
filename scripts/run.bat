cd "%~dp0..\server"
java -server -Xms1024M -Xmx2048M -XX:+UseG1GC -jar server.jar nogui
pause
