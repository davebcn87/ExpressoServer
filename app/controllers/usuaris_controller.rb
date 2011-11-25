class UsuarisController < ApplicationController
  # GET /usuaris
  # GET /usuaris.json
  def index
    @usuaris = Usuari.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usuaris }
    end
  end

  # GET /usuaris/1
  # GET /usuaris/1.json
  def show
    @usuari = Usuari.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usuari }
    end
  end

  # GET /usuaris/new
  # GET /usuaris/new.json
  def new
    @usuari = Usuari.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usuari }
    end
  end

  # GET /usuaris/1/edit
  def edit
    @usuari = Usuari.find(params[:id])
  end

  # POST /usuaris
  # POST /usuaris.json
  def create
    @usuari = Usuari.new(params[:usuari])

    respond_to do |format|
      if @usuari.save
        format.html { redirect_to @usuari, notice: 'Usuari was successfully created.' }
        format.json { render json: @usuari, status: :created, location: @usuari }
      else
        format.html { render action: "new" }
        format.json { render json: @usuari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usuaris/1
  # PUT /usuaris/1.json
  def update
    @usuari = Usuari.find(params[:id])

    respond_to do |format|
      if @usuari.update_attributes(params[:usuari])
        format.html { redirect_to @usuari, notice: 'Usuari was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @usuari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuaris/1
  # DELETE /usuaris/1.json
  def destroy
    @usuari = Usuari.find(params[:id])
    @usuari.destroy

    respond_to do |format|
      format.html { redirect_to usuaris_url }
      format.json { head :ok }
    end
  end
end
