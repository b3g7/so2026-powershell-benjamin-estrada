$estudiantes = Import-Csv "estudiantes.csv"

foreach ($estudiante in $estudiantes) {
    $nombreCarpeta = "$($estudiante.carnet)_$($estudiante.nombre)"

    $caracteresInvalidos = [System.IO.Path]::GetInvalidFileNameChars()

    foreach ($caracter in $caracteresInvalidos) {
        $nombreCarpeta = $nombreCarpeta.Replace($caracter, "_")
    }

    New-Item -ItemType Directory -Name $nombreCarpeta

    Write-Host "Carpeta creada: $nombreCarpeta"
}
