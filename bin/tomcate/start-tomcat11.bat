@echo off
setlocal
set CATALINA_HOME=C:\apache-tomcat-11.0.0
set CATALINA_BASE=C:\apache-tomcat-11.0.0
echo Starting Tomcat 11...
call "%CATALINA_HOME%\bin\startup.bat"
endlocal
