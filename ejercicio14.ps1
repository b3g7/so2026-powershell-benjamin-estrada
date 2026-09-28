for ($i = 1; $i -le 5; $i++) {
    $nombreCarpeta = "Proyecto$i"

    if (Test-Path $nombreCarpeta) {
        Write-Host "La carpeta $nombreCarpeta ya existe. No será creada nuevamente."
    }
    else {
        New-Item -ItemType Directory -Name $nombreCarpeta
        Write-Host "La carpeta $nombreCarpeta fue creada."
    }
}
