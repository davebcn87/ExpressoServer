class Beguda < ActiveRecord::Base
  has_many :extresDisponibles, dependent: :destroy
  has_many :extres, through: :extresDisponibles
end
