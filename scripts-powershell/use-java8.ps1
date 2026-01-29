$env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-8.0.472.8-hotspot" 
$env:PATH = "$env:JAVA_HOME\bin;" + $env:PATH
Write-Host "Switched to Java 8" -ForegroundColor Cyan
java -version