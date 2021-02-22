# Clean the source of a C# based project deleting compiled, dependency and IDE configuration files.
@echo off
set mypath=%cd%
cd %1
echo Eliminando directorios bin.
FOR /F "tokens=*" %%G IN ('DIR /B /AD /S bin') DO RMDIR /S /Q "%%G" 
echo Eliminando directorios obj.
FOR /F "tokens=*" %%G IN ('DIR /B /AD /S obj') DO RMDIR /S /Q "%%G" 
echo Eliminando directorios packages.
FOR /F "tokens=*" %%G IN ('DIR /B /AD /S packages') DO RMDIR /S /Q "%%G"
echo Eliminando directorios .vs
FOR /F "tokens=*" %%G IN ('DIR /B /AD /S .vs') DO RMDIR /S /Q "%%G"
cd %mypath%
