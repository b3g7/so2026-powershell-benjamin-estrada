$estudiantes = @(
    "Benjamin Estrada",
    "Carlos Lopez",
    "Maria Garcia",
    "Ana Martinez",
    "Luis Perez"
)

foreach ($estudiante in $estudiantes) {
    New-Item -ItemType Directory -Name $estudiante
    Write-Host "Carpeta creada para: $estudiante"
}
