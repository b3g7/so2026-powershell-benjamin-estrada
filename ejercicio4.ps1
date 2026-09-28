$nota = [int](Read-Host "Ingrese una nota entre 0 y 100")

if ($nota -lt 0 -or $nota -gt 100) {
    Write-Host "Error: la nota debe estar entre 0 y 100"
}
elseif ($nota -ge 90) {
    Write-Host "Excelente"
}
elseif ($nota -ge 61) {
    Write-Host "Aprobado"
}
else {
    Write-Host "Reprobado"
}
