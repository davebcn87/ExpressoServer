class Beguda < ActiveRecord::Base
  has_many :extresDisponibles
  has_many :extres, through: :extresDisponibles
end
