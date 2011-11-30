class Remot < ActiveRecord::Base
  belongs_to :usuari
  
  App_halt = "$2a$10$dRwXuvlT8j6yPYBQYgNke."

  def create
    self.hash = BCrypt::Engine.hash_secret(Time.now.to_s, App_halt)
    super
  end
end
