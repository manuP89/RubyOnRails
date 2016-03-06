class Libro < ActiveRecord::Base
  validates_uniqueness_of :titulo, message: "- El título ya existe, no se pueden guardar libros con el mismo título."
  validates_presence_of :titulo, :autor, message: "- No se pueden almacenar libros con el campo vacío."
end
