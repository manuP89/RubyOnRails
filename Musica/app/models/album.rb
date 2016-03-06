class Album < ActiveRecord::Base
  
  #validamos que no pueda haber ningún campo vacío
  validates_presence_of :titulo, :artista, :anio, message: '- No puede existir ningún campo vacío.'

  #validamos que dos discos no pueden tener el mismo nombre
  validates_uniqueness_of :titulo, message: '- El título está repetido, debe ser único.'
  
  #validamos que no pueda existir un año inferior a 1000
  validates_numericality_of :anio, greater_than: 1000, message: '- El año no puede ser inferior a 1000.'
  
end
