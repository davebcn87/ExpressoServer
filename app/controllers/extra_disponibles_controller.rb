class ExtraDisponiblesController < ApplicationController
  # GET /extra_disponibles
  # GET /extra_disponibles.json
  def index
    @extra_disponibles = ExtraDisponible.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @extra_disponibles }
    end
  end

  # GET /extra_disponibles/1
  # GET /extra_disponibles/1.json
  def show
    @extra_disponible = ExtraDisponible.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @extra_disponible }
    end
  end

  # GET /extra_disponibles/new
  # GET /extra_disponibles/new.json
  def new
    @extra_disponible = ExtraDisponible.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @extra_disponible }
    end
  end

  # GET /extra_disponibles/1/edit
  def edit
    @extra_disponible = ExtraDisponible.find(params[:id])
  end

  # POST /extra_disponibles
  # POST /extra_disponibles.json
  def create
    @extra_disponible = ExtraDisponible.new(params[:extra_disponible])

    respond_to do |format|
      if @extra_disponible.save
        format.html { redirect_to @extra_disponible, notice: 'Extra disponible was successfully created.' }
        format.json { render json: @extra_disponible, status: :created, location: @extra_disponible }
      else
        format.html { render action: "new" }
        format.json { render json: @extra_disponible.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /extra_disponibles/1
  # PUT /extra_disponibles/1.json
  def update
    @extra_disponible = ExtraDisponible.find(params[:id])

    respond_to do |format|
      if @extra_disponible.update_attributes(params[:extra_disponible])
        format.html { redirect_to @extra_disponible, notice: 'Extra disponible was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @extra_disponible.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extra_disponibles/1
  # DELETE /extra_disponibles/1.json
  def destroy
    @extra_disponible = ExtraDisponible.find(params[:id])
    @extra_disponible.destroy

    respond_to do |format|
      format.html { redirect_to extra_disponibles_url }
      format.json { head :ok }
    end
  end
end
