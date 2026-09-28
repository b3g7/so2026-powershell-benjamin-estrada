$positivos = 0
$negativos = 0
$ceros = 0

for ($i = 1; $i -le 10; $i++) {
    $numero = [int](Read-Host "Ingrese el número $i")

    if ($numero -gt 0) {
        $positivos++
    }
    elseif ($numero -lt 0) {
        $negativos++
    }
    else {
        $ceros++
    }
}

Write-Host ""
Write-Host "Cantidad de positivos: $positivos"
Write-Host "Cantidad de negativos: $negativos"
Write-Host "Cantidad de ceros: $ceros"
