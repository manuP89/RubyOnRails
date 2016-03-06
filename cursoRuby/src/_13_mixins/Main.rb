
load 'Imprimible.rb'
load 'Datos.rb'

datos = Datos.new("Valor del dato 1", "Valor del dato 2")
datos.imprimirPantalla datos.valor1
datos.imprimirFichero "fichero.txt", datos.valor2

