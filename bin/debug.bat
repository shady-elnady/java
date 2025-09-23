@echo off
echo === PATH DEBUGGING ===
echo Batch file location: %~dp0
echo Current directory: %CD%

echo.
echo Navigating to project root...
cd /d "%~dp0.."
echo After navigation: %CD%

echo.
echo Checking for key files:
if exist "pom.xml" (
  echo ✅ pom.xml FOUND
  ) else (
  echo ❌ pom.xml MISSING
)

if exist "src" (
  echo ✅ src/ directory FOUND
  ) else (
  echo ❌ src/ directory MISSING
)

echo.
echo Directory listing:
dir

pause
