@echo off
echo -----------------------------------------
echo . (C) MIW -UPM
echo -----------------------------------------
echo .
set workspace=C:\Users\maste\eclipse-workspace\carlos.blanco.SVC.miw.upm.es
echo .
cd %workspace%
echo ============ mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent verify --settings settings.xml ... ==================
echo . Se prepara cobertura
call mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent verify --settings settings.xml

echo ============ mvn sonar:sonar ... =======================================================
echo . Se analiza y sube a sonar cloud
call mvn sonar:sonar -X -Dsonar.organization=socrtx-github -Dsonar.host.url=https://sonarcloud.io -Dsonar.login=9d13266eb3f54654100dbf26a4d974c8ab56ec32 --settings settings.xml
pause