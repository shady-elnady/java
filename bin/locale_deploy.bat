@echo off
setlocal enabledelayedexpansion

title Spring App Deployer
echo ========================================
echo  Spring Application Deployment Tool
echo ========================================

:: Set paths - Fix navigation to project root
set "BIN_DIR=%~dp0"
set "PROJECT_DIR=%~dp0..\"
set "WAR_FILE=target\myspringapp.war"
set "TOMCAT_WEBAPPS=C:\apache-tomcat-9.0.108\webapps"

:: Change to project root directory (one level up from bin)
cd /d "%PROJECT_DIR%"
echo Bin directory: %BIN_DIR%
echo Project directory: %CD%

:: Verify we're in the right place (pom.xml should be here)
if not exist "pom.xml" (
  echo ❌ ERROR: pom.xml not found in %CD%
  echo Please make sure the batch file is in project-root/bin/
  echo and pom.xml is in project-root/
  dir *.xml
  pause
  exit /b 1
)

echo ✅ Found pom.xml - correct directory!

:: Step 1: Maven Build
echo.
echo [1/3] Building with Maven...
call mvn clean package

if !errorlevel! neq 0 (
  echo.
  echo ❌ MAVEN BUILD FAILED!
  echo Please check the errors above and fix them.
  pause
  exit /b 1
)

echo ✅ Maven build successful!

:: Step 2: Verify WAR file
echo.
echo [2/3] Verifying WAR file...
if not exist "%WAR_FILE%" (
  echo ❌ WAR file not found: %WAR_FILE%
  echo Current directory: %CD%
  echo Files in current directory:
  dir
  if exist target (
    echo Files in target directory:
    dir target\
    ) else (
    echo Target directory does not exist!
  )
  pause
  exit /b 1
)

echo ✅ WAR file found: %WAR_FILE%
for %%F in ("%WAR_FILE%") do echo File size: %%~zF bytes

:: Step 3: Verify Tomcat directory
echo.
echo [3/3] Deploying to Tomcat...
if not exist "%TOMCAT_WEBAPPS%" (
  echo ❌ Tomcat directory not found: %TOMCAT_WEBAPPS%
  echo Please check:
  echo 1. Tomcat is installed at the correct path
  echo 2. Tomcat version number in the batch file
  pause
  exit /b 1
)

:: Stop Tomcat if running (optional)
echo Stopping Tomcat if running...
tasklist /FI "IMAGENAME eq java.exe" 2>nul | find /I "java.exe" >nul
if !errorlevel! == 0 (
  echo Tomcat is running. Attempting to stop...
  call "%TOMCAT_WEBAPPS%\..\bin\shutdown.bat" 2>nul
  timeout /t 5 /nobreak >nul
)

:: Deploy WAR file
echo Deploying WAR file...
copy "%WAR_FILE%" "%TOMCAT_WEBAPPS%\"

if !errorlevel! neq 0 (
  echo ❌ DEPLOYMENT FAILED!
  echo Could not copy WAR file to Tomcat.
  pause
  exit /b 1
)

echo ✅ Deployment successful!

:: Step 4: Start Tomcat
echo.
echo Starting Tomcat...
start "" "%TOMCAT_WEBAPPS%\..\bin\startup.bat"

echo.
echo ========================================
echo  DEPLOYMENT COMPLETE
echo ========================================
echo.
echo 📍 Application: http://localhost:8080/myspringapp
echo 📍 Tomcat logs: %TOMCAT_WEBAPPS%\..\logs
echo 📍 Project directory: %PROJECT_DIR%
echo.
echo Note: Tomcat may take 10-30 seconds to start completely.
echo.

pause
