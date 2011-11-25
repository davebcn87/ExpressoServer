class ComandesController < ApplicationController
  # GET /comandes
  # GET /comandes.json
  def index
    @comandes = Comanda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comandes }
    end
  end

  # GET /comandes/1
  # GET /comandes/1.json
  def show
    @comanda = Comanda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comanda }
    end
  end

  # GET /comandes/new
  # GET /comandes/new.json
  def new
    @comanda = Comanda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comanda }
    end
  end

  # GET /comandes/1/edit
  def edit
    @comanda = Comanda.find(params[:id])
  end

  # POST /comandes
  # POST /comandes.json
  def create
    @comanda = Comanda.new(params[:comanda])

    respond_to do |format|
      if @comanda.save
        format.html { redirect_to @comanda, notice: 'Comanda was successfully created.' }
        format.json { render json: @comanda, status: :created, location: @comanda }
      else
        format.html { render action: "new" }
        format.json { render json: @comanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comandes/1
  # PUT /comandes/1.json
  def update
    @comanda = Comanda.find(params[:id])

    respond_to do |format|
      if @comanda.update_attributes(params[:comanda])
        format.html { redirect_to @comanda, notice: 'Comanda was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @comanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comandes/1
  # DELETE /comandes/1.json
  def destroy
    @comanda = Comanda.find(params[:id])
    @comanda.destroy

    respond_to do |format|
      format.html { redirect_to comandes_url }
      format.json { head :ok }
    end
  end
end
