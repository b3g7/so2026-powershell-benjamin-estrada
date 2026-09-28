$numero = [int](Read-Host "Ingrese un número")

for ($i = 1; $i -le 10; $i++) {
    $resultado = $numero * $i
    Write-Host "$numero x $i = $resultado"
}
