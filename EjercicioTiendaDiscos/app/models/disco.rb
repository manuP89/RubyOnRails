class Disco < ActiveRecord::Base
  validates_uniqueness_of :nombre
  validates_numericality_of :anio, greater_than: 1000
  validates_presence_of :anio,:nombre,:artista
end
