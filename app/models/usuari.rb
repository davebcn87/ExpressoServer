class Usuari < ActiveRecord::Base
  has_many :comandes
end
