class ApplicationController < ActionController::Base
  include ControllerAuthentication
  
  before_filter :login_required
  
  protect_from_forgery
  
  App_halt = "$2a$10$dRwXuvlT8j6yPYBQYgNke."
end
