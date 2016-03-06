#los modulos son como las clases, se crean igual, y agrupan codigo bajo un nombre
module ModuloColores
  RED = "255,0,0"
  GREEN = "0,255,0"
  BLUE = "0,0,255"
  
  #en las clases podría tirar del self, pero aqui no, tengo que poner el nombre del modulo
  def ModuloColores.getRGB(rojo, verde, azul)
    "(#{rojo}, #{verde}, #{azul})"
  end
  
end