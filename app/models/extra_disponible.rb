class ExtraDisponible < ActiveRecord::Base
  has_many :begudes
  has_many :extres
end
