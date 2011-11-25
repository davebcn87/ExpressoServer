class Comanda < ActiveRecord::Base
  has_many :topings, dependent: :destroy
  has_many :extres, through: :topings
  
  has_one :beguda
end
