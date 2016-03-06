class Registro < ActiveRecord::Base
  #Si no viene relleno no insertamos nada en bd
  #El mensaje se propagará en caso de que haya ido mal
  validates_presence_of :titulo, message: 'El título no puede estar vacío'
  #Validar que no se repita
  validates_uniqueness_of :titulo, message: 'El título debe de ser unico'
  #Validaciones de tamaño
  validates_length_of :comentarios, :within => 5..200, message: 'El comentario debe de tener entre 5 y 200 caracteres'
  #podemos aññadir al tamaño otras opciones
  # :minimum -Tamaño mínimo
  # :maximum - Tamaño máximo
  # :is - Tamaño exacto
  # :within - Rango válido

  #Podemos crear callsBack en el modelo
  after_create :mostrar_registro
  
  def mostrar_registro
    puts "Entrando en mostrar_registro"
    puts "Registro creado: titulo: #{titulo}, comentarios: #{comentarios}"
  end
  #podemos tener otros callbacks
  #before_create, si devolvemos false no se insertará el registro
  #before_save 
  #after_save 
  #before_destroy 
  #after_destroy 
  
  #Tambien podemos crear nuestros propios validadores
  validate :titulo_especial
  
  def titulo_especial
    if titulo != nil
      if titulo == "Nota"
        errors.add(:titulo,"El titulo no puede ser 'Nota'")
      end
    end
  end

end
