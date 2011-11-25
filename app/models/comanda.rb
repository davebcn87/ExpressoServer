class Comanda < ActiveRecord::Base
  has_many :topings
  has_many :extres, through: :topings
  
  has_one :beguda
end
