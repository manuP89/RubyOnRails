class Cliente < ActiveRecord::Base
  #En este caso estamos diciendo que un cliente puede tener
  #muchas facturas, :facturas es el atributo que tendrá las facturas
  #lo declaro como :nullify porque no quiero esta vez eliminar
  #las facturas
  has_many :facturas, :dependent => :nullify
end
