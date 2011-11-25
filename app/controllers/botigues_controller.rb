class BotiguesController < ApplicationController
  # GET /botigues
  # GET /botigues.json
  def index
    @botigues = Botiga.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @botigues }
    end
  end

  # GET /botigues/1
  # GET /botigues/1.json
  def show
    @botiga = Botiga.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @botiga }
    end
  end

  # GET /botigues/new
  # GET /botigues/new.json
  def new
    @botiga = Botiga.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @botiga }
    end
  end

  # GET /botigues/1/edit
  def edit
    @botiga = Botiga.find(params[:id])
  end

  # POST /botigues
  # POST /botigues.json
  def create
    @botiga = Botiga.new(params[:botiga])

    respond_to do |format|
      if @botiga.save
        format.html { redirect_to @botiga, notice: 'Botiga was successfully created.' }
        format.json { render json: @botiga, status: :created, location: @botiga }
      else
        format.html { render action: "new" }
        format.json { render json: @botiga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /botigues/1
  # PUT /botigues/1.json
  def update
    @botiga = Botiga.find(params[:id])

    respond_to do |format|
      if @botiga.update_attributes(params[:botiga])
        format.html { redirect_to @botiga, notice: 'Botiga was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @botiga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /botigues/1
  # DELETE /botigues/1.json
  def destroy
    @botiga = Botiga.find(params[:id])
    @botiga.destroy

    respond_to do |format|
      format.html { redirect_to botigues_url }
      format.json { head :ok }
    end
  end
end
