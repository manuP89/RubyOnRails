class Comercial < ActiveRecord::Base
  has_and_belongs_to_many :clientes
end
