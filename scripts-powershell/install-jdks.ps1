$jdks = "EclipseAdoptium.Temurin.8.JDK", "EclipseAdoptium.Temurin.17.JDK", "EclipseAdoptium.Temurin.21.JDK"

Write-Host "--- Instalando JDKs ---" -ForegroundColor Cyan

foreach ($id in $jdks) {
    Write-Host "Instalando $id..." -NoNewline
    winget install --id $id -e --silent --accept-source-agreements --accept-package-agreements | Out-Null
    
    if ($?) { Write-Host " [LISTO]" -ForegroundColor Green }
    else { Write-Host " [FALLÓ]" -ForegroundColor Red }
}

Write-Host "`nTodo terminado." -ForegroundColor Cyan