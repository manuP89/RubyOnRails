class Cliente < ActiveRecord::Base
  has_and_belongs_to_many :comercials
end
