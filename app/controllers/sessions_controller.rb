class SessionsController < ApplicationController
  skip_before_filter :login_required, :only => [:new, :create]
  
  def new
  end

  def create
    usuari = Usuari.authenticate(params[:login], params[:password])
    if usuari
      session[:usuari_id] = usuari.id
      redirect_to_target_or_default root_url, :notice => "Logged in successfully."
    else
      flash.now[:alert] = "Invalid login or password."
      render :action => 'new'
    end
  end

  def destroy
    session[:usuari_id] = nil
    redirect_to root_url, :notice => "You have been logged out."
  end
end
