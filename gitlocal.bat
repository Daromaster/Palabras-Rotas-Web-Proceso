@echo off
cd /d "%~dp0"

echo ==============================
echo    Git Local
echo      COMMIT LOCAL
echo ==============================
echo.

set /p msg=Mensaje del commit local: 
if "%msg%"=="" set msg=Commit local sin mensaje

echo.
echo Agregando cambios...
git add -A

echo Creando commit...
git commit -m "%msg%"

echo.
echo Estado actual:
git status

echo.
echo Commit local realizado.
pause
