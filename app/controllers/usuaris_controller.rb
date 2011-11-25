class UsuarisController < ApplicationController
  before_filter :login_required, :except => [:new, :create]

  def new
    @usuari = Usuari.new
  end

  def create
    @usuari = Usuari.new(params[:usuari])
    if @usuari.save
      session[:usuari_id] = @usuari.id
      redirect_to root_url, :notice => "Thank you for signing up! You are now logged in."
    else
      render :action => 'new'
    end
  end

  def edit
    @usuari = current_usuari
  end

  def update
    @usuari = current_usuari
    if @usuari.update_attributes(params[:usuari])
      redirect_to root_url, :notice => "Your profile has been updated."
    else
      render :action => 'edit'
    end
  end
end
