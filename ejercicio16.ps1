$estudiantes = Import-Csv "estudiantes.csv"

for ($i = 0; $i -lt $estudiantes.Count; $i++) {
    Write-Host "=============================="
    Write-Host "Estudiante $($i + 1)"
    Write-Host "Carnet: $($estudiantes[$i].carnet)"
    Write-Host "Nombre: $($estudiantes[$i].nombre)"
    Write-Host "Email: $($estudiantes[$i].email)"
    Write-Host "Teléfono: $($estudiantes[$i].telefono)"
}
