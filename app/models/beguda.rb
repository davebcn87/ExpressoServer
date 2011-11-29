class Beguda < ActiveRecord::Base
  has_many :extresDisponibles, dependent: :destroy
  has_many :extres, through: :extresDisponibles
  
  def afegirExtres(llistaExtres)
    self.extres.clear
    if (llistaExtres != nil) 
      llistaExtres.each do |extra|
        extraObj = Extra.find(extra)
        self.extres << extraObj
      end
    end
  end
end
