@echo off
set workspace=C:\Users\maste\eclipse-workspace\carlos.blanco.SVC.miw.upm.es
::Las variables de entorno se pueden configurar directamente en Windows cuando se tienen los permisos necesarios
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_144
set M2_HOME=C:\Users\maste\apache-maven-3.5.0
set PATH=%PATH%;%JAVA_HOME%\bin;%M2_HOME%\bin
echo -----------------------------------------
echo . (C) MIW - UPM
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo JAVA_HOME --- %JAVA_HOME%
echo M2_HOME   --- %M2_HOME%
echo .
cd %workspace%

echo ============ mvn -ff clean test (profile: develop) ============
echo .
call mvn clean test   -Denvironment.type=develop --settings settings.xml

if errorLevel 1 goto errorDevelop


echo ============ mvn -Dmaven.test.skip=true package -Denvironment.type=preproduction ============
echo .
call mvn -Dmaven.test.skip=true package -Denvironment.type=preproduction

if errorLevel 1 goto errorPreproduction

pause
exit

:errorDevelop
echo .
echo .
echo .
echo ########  ERRORES de test en Develop
pause
exit

:errorPreproduction
echo .
echo .
echo .
echo ########  ERRORES de Test de Integration en Pre-Produccion 
pause
exit