class Remot < ActiveRecord::Base
  belongs_to :usuari
  
  def create
    self.hash = BCrypt::Engine.hash_secret(Time.now.to_s, app_halt)
    super
  end
end
