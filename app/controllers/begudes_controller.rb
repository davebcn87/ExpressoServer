class BegudesController < ApplicationController
  
  
  # GET /begudes
  # GET /begudes.json
  def index
    @begudes = Beguda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @begudes }
    end
  end

  # GET /begudes/1
  # GET /begudes/1.json
  def show
    @beguda = Beguda.includes(:extres).find(params[:id])
    @llistaExtres = llistarNomExtres(@beguda)
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beguda }
    end
  end

  # GET /begudes/new
  # GET /begudes/new.json
  def new
    @beguda = Beguda.new
    @extres = Extra.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beguda }
    end
  end

  # GET /begudes/1/edit
  def edit
    @beguda = Beguda.find(params[:id])
    @extres = Extra.find(:all)
    
    @llistaExtres = llistarExtres(@beguda)
  end

  # POST /begudes
  # POST /begudes.json
  def create
    @beguda = Beguda.new(params[:beguda])
    @beguda.afegirExtres(params[:extres])

    respond_to do |format|
      if @beguda.save
        format.html { redirect_to @beguda, notice: 'Beguda was successfully created.' }
        format.json { render json: @beguda, status: :created, location: @beguda }
      else
        format.html { render action: "new" }
        format.json { render json: @beguda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /begudes/1
  # PUT /begudes/1.json
  def update
    @beguda = Beguda.find(params[:id])
    @beguda.afegirExtres(params[:extres])

    respond_to do |format|
      if @beguda.update_attributes(params[:beguda])
        format.html { redirect_to @beguda, notice: 'Beguda was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @beguda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /begudes/1
  # DELETE /begudes/1.json
  def destroy
    @beguda = Beguda.find(params[:id])
    @beguda.destroy

    respond_to do |format|
      format.html { redirect_to begudes_url }
      format.json { head :ok }
    end
  end
  
  private
  
  def llistarExtres(beguda)
    llistaExtres = [] 
  	@beguda.extres.each {|extra| llistaExtres << extra.id}
  	return llistaExtres
  end
    
  def llistarNomExtres(beguda)
    llistaExtres = [] 
  	@beguda.extres.each {|extra| llistaExtres << extra.nom}
  	return llistaExtres
  end
  
end
