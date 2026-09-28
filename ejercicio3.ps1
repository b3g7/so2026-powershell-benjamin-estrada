$edad = [int](Read-Host "Ingrese su edad")

if ($edad -ge 18) {
    Write-Host "Mayor de edad"
}
else {
    Write-Host "Menor de edad"
}
