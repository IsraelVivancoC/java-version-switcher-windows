@echo off
REM Switch to Java 17 for current terminal session

set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.xxx
set PATH=%JAVA_HOME%\bin;%PATH%

echo Using Java:
java -version
