$proyecto = Read-Host "Ingrese el nombre del proyecto"

New-Item -ItemType Directory -Name $proyecto

$subcarpetas = @(
    "Documentos",
    "Imagenes",
    "Codigo",
    "Respaldos",
    "Reportes"
)

foreach ($carpeta in $subcarpetas) {
    $ruta = Join-Path $proyecto $carpeta
    New-Item -ItemType Directory -Path $ruta
    Write-Host "Creada: $ruta"
}

Write-Host ""
Write-Host "Estructura del proyecto creada correctamente."
