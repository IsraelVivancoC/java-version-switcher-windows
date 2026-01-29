$env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-21.0.9.10-hotspot" 
$env:PATH = "$env:JAVA_HOME\bin;" + $env:PATH
Write-Host "Switched to Java 21" -ForegroundColor Cyan
java -version