class ExtresController < ApplicationController
  # GET /extres
  # GET /extres.json
  def index
    @extres = Extra.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @extres }
    end
  end

  # GET /extres/1
  # GET /extres/1.json
  def show
    @extra = Extra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @extra }
    end
  end

  # GET /extres/new
  # GET /extres/new.json
  def new
    @extra = Extra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @extra }
    end
  end

  # GET /extres/1/edit
  def edit
    @extra = Extra.find(params[:id])
  end

  # POST /extres
  # POST /extres.json
  def create
    @extra = Extra.new(params[:extra])

    respond_to do |format|
      if @extra.save
        format.html { redirect_to @extra, notice: 'Extra was successfully created.' }
        format.json { render json: @extra, status: :created, location: @extra }
      else
        format.html { render action: "new" }
        format.json { render json: @extra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /extres/1
  # PUT /extres/1.json
  def update
    @extra = Extra.find(params[:id])

    respond_to do |format|
      if @extra.update_attributes(params[:extra])
        format.html { redirect_to @extra, notice: 'Extra was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @extra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extres/1
  # DELETE /extres/1.json
  def destroy
    @extra = Extra.find(params[:id])
    @extra.destroy

    respond_to do |format|
      format.html { redirect_to extres_url }
      format.json { head :ok }
    end
  end
end
