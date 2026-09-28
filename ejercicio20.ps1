$carpetas = @(
    "Imagenes",
    "Documentos",
    "PDF",
    "Otros"
)

foreach ($carpeta in $carpetas) {
    if (-not (Test-Path $carpeta)) {
        New-Item -ItemType Directory -Name $carpeta
    }
}

$archivos = Get-ChildItem -File

foreach ($archivo in $archivos) {
    switch ($archivo.Extension.ToLower()) {
        ".jpg" {
            $destino = "Imagenes"
        }
        ".png" {
            $destino = "Imagenes"
        }
        ".docx" {
            $destino = "Documentos"
        }
        ".txt" {
            $destino = "Documentos"
        }
        ".pdf" {
            $destino = "PDF"
        }
        default {
            $destino = "Otros"
        }
    }

    $rutaDestino = Join-Path $destino $archivo.Name

    Move-Item -Path $archivo.FullName -Destination $rutaDestino

    Write-Host "Movido: $($archivo.Name) -> $destino"
}
