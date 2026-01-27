@echo off
REM Install Java JDKs using winget (Eclipse Temurin)

echo Installing Java 8 JDK...
winget install --id EclipseAdoptium.Temurin.8.JDK -e

echo Installing Java 17 JDK...
winget install --id EclipseAdoptium.Temurin.17.JDK -e

echo Installing Java 21 JDK...
winget install --id EclipseAdoptium.Temurin.21.JDK -e

echo.
echo Installation completed.
echo You may need to open a new terminal to use the installed JDKs.
