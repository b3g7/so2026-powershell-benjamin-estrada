$numero = [int](Read-Host "Ingrese un número entero")

if ($numero -gt 0) {
    Write-Host "El número es positivo"
}
elseif ($numero -lt 0) {
    Write-Host "El número es negativo"
}
else {
    Write-Host "El número es igual a cero"
}