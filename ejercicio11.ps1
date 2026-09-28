$cantidad = [int](Read-Host "Ingrese la cantidad de carpetas a generar")

for ($i = 1; $i -le $cantidad; $i++) {
    $nombreCarpeta = "Carpeta$i"

    New-Item -ItemType Directory -Name $nombreCarpeta

    Write-Host "Creada: $nombreCarpeta"
}
