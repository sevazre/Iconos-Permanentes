@echo off
chcp 65001
setlocal enabledelayedexpansion
cd "%~dp0"

:si
cd "%~dp0"
cls
echo.
echo ###########################################
echo #          ICONOS PERMANENTES             #
echo ###########################################
echo.
echo por Sebastián Vázquez Real
echo.
echo (Las direcciones deben ir CON comillas si procede)
echo.
echo Introduzca el nombre de la carpeta:
echo.
set /p "nombre="
echo.
echo Introduzca la direccion completa del icono:
echo.
set /p "dire2="
echo.

cd creaciones
mkdir "%nombre%"
cd..

copy "texto.txt" "creaciones\%nombre%\Desktop.ini"
cd "creaciones/%nombre%"
attrib +h +s Desktop.ini
mkdir style
copy %dire2% "style/ico.ico"
cd..
attrib +s "%nombre%"
cd "%nombre%"
attrib +s +h style
cd..
cd..

:menu
cls
echo.
echo Desea Realizar otra operacion?
echo.
echo.
echo 1.- SI
echo 2.- NO
echo.
set /p "opcion=seleccione una opcion:"
if "%opcion%" == "1" goto si
if "%opcion%" == "2" goto no
if not "%opcion%" == "1" if not "%opcion%" == "2" (
cls
echo.
echo ERROR, respuesta no valida 
echo.
pause
echo.
goto menu
)



:no
start "" "%~dp0Creaciones"
exit
