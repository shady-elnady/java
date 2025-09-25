@echo off
setlocal
set CATALINA_9_HOME=C:\apache-tomcat-9.0.108
set CATALINA_9_HOME=C:\apache-tomcat-9.0.108
echo Stopping Tomcat 9...
call "%CATALINA_9_HOME%\bin\shutdown9.bat"
endlocal