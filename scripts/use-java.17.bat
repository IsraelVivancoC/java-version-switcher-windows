@echo off
REM Switch to Java 17 for current terminal session

set JAVA_HOME=C:\Program Files\Java\jdk17
set PATH=%JAVA_HOME%\bin;%PATH%

echo Using Java:
java -version
