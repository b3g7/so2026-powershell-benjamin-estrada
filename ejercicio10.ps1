$contraseña = ""

while ($contraseña -ne "PowerShell123") {
    $contraseña = Read-Host "Ingrese la contraseña"

    if ($contraseña -ne "PowerShell123") {
        Write-Host "Contraseña incorrecta. Intente nuevamente."
    }
}

Write-Host "Acceso permitido"
