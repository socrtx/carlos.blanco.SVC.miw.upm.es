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

echo ============ mvn clean verify (profile: develop) =======================================================
echo .
call mvn clean verify --settings settings.xml
pause




