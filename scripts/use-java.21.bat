@echo off
REM Switch to Java 21 for current terminal session

set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-21.0.xxx
set PATH=%JAVA_HOME%\bin;%PATH%

echo Using Java:
java -version
