@echo off
cd /d "%~dp0"

echo ==============================
echo   Git Subir
echo   COMMIT + PUSH A GITHUB
echo ==============================
echo.

set /p msg=Mensaje del commit: 
if "%msg%"=="" set msg=Actualizacion sin mensaje

echo.
echo Agregando cambios...
git add -A

echo Creando commit...
git commit -m "%msg%"

echo.
echo Subiendo a GitHub...
git push

echo.
echo Estado actual del repositorio:
git status

echo.
echo Listo!
pause
