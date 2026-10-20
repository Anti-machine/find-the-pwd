@echo off
setlocal
if "%~1"=="" (
  set /p "guess=Enter password: "
) else (
  set "guess=%~1"
)
if "%guess%"=="hai_nile" (
  echo Correct! You found the password.
  exit /b 0
)
echo Not quite. Keep searching!
exit /b 1
