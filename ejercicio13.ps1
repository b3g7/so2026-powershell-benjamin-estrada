$aprobados = 0
$reprobados = 0

Write-Host "================================="
Write-Host " REGISTRO DE ESTUDIANTES"
Write-Host "================================="

for ($i = 1; $i -le 5; $i++) {
    $nombre = Read-Host "Ingrese el nombre del estudiante $i"
    $nota = [int](Read-Host "Ingrese la nota de $nombre")

    if ($nota -ge 61) {
        New-Item -ItemType Directory -Name $nombre
        $aprobados++
        Write-Host "$nombre aprobó. Carpeta creada."
    }
    else {
        $reprobados++
        Write-Host "$nombre reprobó. No se creó carpeta."
    }
}

Write-Host ""
Write-Host "================================="
Write-Host "RESULTADOS"
Write-Host "================================="
Write-Host "Cantidad de aprobados: $aprobados"
Write-Host "Cantidad de reprobados: $reprobados"
Write-Host "Cantidad de carpetas creadas: $aprobados"
