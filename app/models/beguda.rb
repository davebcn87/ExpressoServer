class Beguda < ActiveRecord::Base
  has_many :extresDisponibles, dependent: :destroy
  has_many :extres, through: :extresDisponibles
  
  def afegirExtres(llistaExtres)
    self.extres.clear
    llistaExtres.each do |extra|
      extraObj = Extra.find(extra)
      self.extres << extraObj
    end
  end
end
