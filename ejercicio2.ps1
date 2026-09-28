$numero = [int](Read-Host "Ingrese un número entero")

if ($numero % 2 -eq 0) {
    Write-Host "El número $numero es par"
}
else {
    Write-Host "El número $numero es impar"
}