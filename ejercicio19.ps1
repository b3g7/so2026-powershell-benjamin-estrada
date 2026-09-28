$txt = 0
$csv = 0
$otros = 0

$archivos = Get-ChildItem -File

foreach ($archivo in $archivos) {
    if ($archivo.Extension -eq ".txt") {
        Write-Host "$($archivo.Name) - Archivo de texto"
        $txt++
    }
    elseif ($archivo.Extension -eq ".csv") {
        Write-Host "$($archivo.Name) - Archivo CSV"
        $csv++
    }
    else {
        Write-Host "$($archivo.Name) - Otro tipo de archivo"
        $otros++
    }
}

Write-Host ""
Write-Host "=============================="
Write-Host "RESULTADOS"
Write-Host "=============================="
Write-Host "Archivos de texto: $txt"
Write-Host "Archivos CSV: $csv"
Write-Host "Otros archivos: $otros"
