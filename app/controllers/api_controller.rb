class ApiController < ApplicationController
  skip_before_filter :login_required
  
  def login
    usuari = Usuari.authenticate(params[:user], params[:pass])
    

    json=""
    if usuari
      result = 1
      credits = usuari.saldo
      
      remot = usuari.create_remot
      
      json = "{\"result\":#{result}, \"credits\":#{credits}, \"idSessio\":\"#{remot.hash}\"}"
    else
      result = 0
      
      json = "{\"result\":#{result}}"
    end
    
    render json: json
  end
  
  def carta
    categories = Categoria.includes(:begudes).find(:all)
    render json: categories.to_json(include: { begudes: { include: :extres }}, except: [:created_at, :updated_at])
  end
end
