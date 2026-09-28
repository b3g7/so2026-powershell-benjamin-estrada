$estudiantes = Import-Csv "notas.csv"

if (-not (Test-Path "Aprobados")) {
    New-Item -ItemType Directory -Name "Aprobados"
}

if (-not (Test-Path "Reprobados")) {
    New-Item -ItemType Directory -Name "Reprobados"
}

foreach ($estudiante in $estudiantes) {
    $carnet = $estudiante.carnet
    $nota = [int]$estudiante.nota

    if ($nota -ge 61) {
        New-Item -ItemType Directory -Path "Aprobados\$carnet"
        Write-Host "$carnet - $($estudiante.nombre): Aprobado"
    }
    else {
        New-Item -ItemType Directory -Path "Reprobados\$carnet"
        Write-Host "$carnet - $($estudiante.nombre): Reprobado"
    }
}
