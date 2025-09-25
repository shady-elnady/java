@echo off
setlocal
set CATALINA_9_HOME=C:\apache-tomcat-9.0.108
set CATALINA_9_BASE=C:\apache-tomcat-9.0.108
echo Starting Tomcat 9...
call "%CATALINA_9_HOME%\bin\startup9.bat"
endlocal