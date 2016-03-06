class Cliente < ActiveRecord::Base
  #Es importnte en rails definir las asociaciones
  #http://guides.rubyonrails.org/association_basics.html
  
  #Estamos diciendo que un cliente tiene una clasa direccion
  #como relación 1 a 1, es decir un cliente tiene una direccion
  #despues de la coma decimos que al borrar una dirección que se borren
  #también la dirección asociada
  has_one :direccion , :dependent => :destroy
end
