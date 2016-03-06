class Registro < ActiveRecord::Base
  
  #con esta linea validamos que no podamos meter en BBDD un título que este VACIO
  validates_presence_of :titulo, message: '- El título no puede estar vacío.'
  
  #podemos validar porque NO SE REPITA un campo
  validates_uniqueness_of :titulo, message: '- El título está repetido, debe ser único'
  
  #podemos hacer validaciones de TAMAÑO, se define un rango
  validates_length_of :comentarios, :within => 5..200, message: '- El comentario debe tener entre 5 y 200 caracteres'
  #podemos utilizar otras opciones en vez de ':within'
    # ':minimum' establece un tamaño mínimo
    # ':maximum' establece un tamaño máximo
  
  #decimos que queremos utilizar el método como validador
  validate :validacion_titulo_nota
  
  def validacion_titulo_nota
    if titulo != nil && titulo == "Nota" then
      errors.add(:titulo, "El título no puede ser 'Nota'")
    end
  end
  
  
end
