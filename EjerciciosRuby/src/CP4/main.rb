#cargamos todos los archivos que definen cada una de las clases.
#primero se carga la clase padre(inventario) y despues todas las demas. Cargandolas asi no sera necesario cargar la clase padre dentro de cada una de las clases.  
#cargamos los archivos que contienen la clase contacto y direccion del CP3, con los que crearemos un cliente. 
#cargamos los archivos por orden de uso.                                                                  
load 'modelo/ordenador.rb'  #este archivo es el que contiene la clase 'Ordenador' a la que pertenecen todas las relacionadas con ordenador.
load 'modelo/componente.rb'

load 'modelo/procesador.rb'
load 'modelo/ram.rb'
load 'modelo/tarjetaRed.rb' #tarjetaRed debe ir por delante de direccion, ya que direccion pertenece a tarjetaRed, y debe crearse antes la clase tarjetaRed para que funcione.
load 'modelo/direccion.rb'
load 'modelo/disco_duro.rb'
load 'modelo/grafica.rb'
load 'modelo/placa_base.rb'
load 'modelo/pantalla.rb'
#como hemos hecho que direccion pertenezca a contacto, debemos cargar antes contacto para que se cree la clase y pueda crearse despues la clase direccion.
load 'modelo_persona/contacto.rb'
load 'modelo_persona/direccion.rb'

#definimos cada uno de los componentes(objetos) introduciendole los parametros necesarios.
#Para llamar a las clases debemos añadir en el nombre el modulo o clase al que pertenecen, por ejemplo, procesador depende de ordenador por lo que habria que poner 'Ordenador::Procesador...'
procesador1 = Ordenador::Procesador.new("Intel", "i6", "2.10 GHz", 500)
procesador2 = Ordenador::Procesador.new("AMD", "FX-6350", "3.9 GHz", 300)

ram1 = Ordenador::Ram.new("Kingston", "65243-52", "4 GB", 200)
ram2 = Ordenador::Ram.new("Corsair", "CM-56412", "16 GB", 100)

#Como direccion depende de tarjetaRed, que a su vez depende de Ordenador, el nombre de direccion al llamar a la clase debe ser la concatenacion de los otros.
direccion1 = Ordenador::TarjetaRed::Direccion.new("33:EF:21:33:56:B9", "192.168.1.23")
direccion2 = Ordenador::TarjetaRed::Direccion.new("33:EF:21:33:56:B7", "192.168.1.25")

tarjetaRed1 = Ordenador::TarjetaRed.new(direccion1, "Broadconn", "1000Mbps", 25)
tarjetaRed2 = Ordenador::TarjetaRed.new(direccion2, "Realtek", "100Mbps", 20)

discoDuro1 = Ordenador::DiscoDuro.new("Samsung", "850 Evo", "SSD", "250 GB", 100)
discoDuro2 = Ordenador::DiscoDuro.new("WD", "Kaviar Blue", "HDD", "1 TB", 150)

grafica1 = Ordenador::Grafica.new("Nvidia", "GForce", "2 GB", 150)
grafica2 = Ordenador::Grafica.new("AMD", "Radeon", "4 GB", 250)

placaBase1 = Ordenador::PlacaBase.new("Asus", "T1000", 500)
placaBase2 = Ordenador::PlacaBase.new("Dell", "D5000", 450)

monitor1 = Ordenador::Pantalla.new("Dell", "E2010Ht", "21", 350)
monitor2 = Ordenador::Pantalla.new("Toshiba", "T5478HD", "32", 300)

#calculamos el precio total de los dos ordenadores. con el attr_accessor podemos escribirlo como objeto.precio.
#con esto lo calculamos individualmente para cada objeto, sin un metodo de generalizacion.
#como hay un metodo creado dentro de la clase ordenador, estas dos líneas sobran.
#precioTotal1 = procesador1.precio + ram1.precio + discoDuro1.precio + grafica1.precio + placaBase1.precio + monitor1.precio
#precioTotal2 = procesador2.precio + ram2.precio + discoDuro2.precio + grafica2.precio + placaBase2.precio + monitor2.precio

#definimos los dos ordenadores a partir de cada uno de los componentes definidos anteriormente.
ordenador1 = Ordenador.new("Samsung", procesador1, ram1, tarjetaRed1, discoDuro1, grafica1, placaBase1, monitor1)
ordenador2 = Ordenador.new("Asus", procesador2, ram2, tarjetaRed2, discoDuro2, grafica2, placaBase2, monitor2)

#como tenemos dos clases con el mismo nombre, para ruby solo es una, asique una solucion seria cargar los archivos de la clase a utilizar antes de utilizarla. ES UN ENGORRO.
#Para ello deberemos utilizar el cargador de clases.
#load 'modelo_persona/direccion.rb'
#load 'modelo_persona/contacto.rb'

#creamos el cliente con su direccion. A partir de las clases definidas en el CP3, que hemos copiado y guardado en la carpeta 'modelo_persona'
dirCliente1 = Contacto::Direccion.new("Calle", "Linneo", 33, 2, "A")
dirCliente2 = Contacto::Direccion.new("Paseo", "Melancólicos", 15, 3, "B")

cliente1 = Contacto.new("Pepe", "García", 30, dirCliente1)
cliente2 = Contacto.new("Juan", "Sánchez", 25, dirCliente2)

#finalmente imprimimos por pantalla.
puts cliente1
puts ordenador1
puts cliente2
puts ordenador2


