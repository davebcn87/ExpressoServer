class ApiController < ApplicationController
  
  def login
    usuari = Usuari.authenticate(params[:login], params[:password])
    
    json=""
    if usuari
      result = 1
      credits = usuari.credits
      
      remot = usuari.create_remot
      
      json = "{\"result\":#{result}, \"credits\":#{credits}, \"idSessio\":#{remot.hash}}"
    else
      result = 0
      
      json = "{\"result\":#{result}}"
    end
    
    render json: json
  end
  
  def carta
    begudes = Beguda.includes(:extres).find(:all)
    render json: begudes.to_json(include: :extres, except: [:created_at, :updated_at])
  end
end
