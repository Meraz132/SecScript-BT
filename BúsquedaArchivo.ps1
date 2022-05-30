
#$MalFile almacena el valor del nombre del archivo o cadena que desees buscar, 
# no es necesario colocar wildcard (*) al inicio y final de la cadena, solo colocar de manera intermedia si es necesario ej: malware*test

$MalFile = Read-Host "Coloca string/nombre de archivo que de deseas buscar"

#$Excepcion almacena valor que desea omitirse de busqueda, recomendado para omitir formatos (ejemplo: .tmp)
#El wildcard (*) para este parametro solo se encuentra configurado en la primera posición (*.tmp)

$Excepcion = Read-Host "Coloca valor que deses omitir de la búsqueda"

#$Path almacena valor de la ruta a partir de la cual se realizará la búsqueda, colocada como ruta absoluta (ejemplo C:\test\test2)
#el comando realizará búsqueda recursiva en directorios y subdirectorios a partir de la ruta definida

$Path = Read-Host "Coloca la ruta desde la cual deseas realizar la búsqueda"

# El parámetro "-Force" puede omitirse en caso de que no se requiera buscar archivos ocultos.

Get-Childitem –Path $Path\* -Include *$MalFile* -Exclude *$Excepcion -Recurse -ErrorAction SilentlyContinue -Force

# Mayor detalle https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-childitem?view=powershell-7.2
