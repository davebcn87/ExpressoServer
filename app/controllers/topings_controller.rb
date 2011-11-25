class TopingsController < ApplicationController
  # GET /topings
  # GET /topings.json
  def index
    @topings = Toping.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @topings }
    end
  end

  # GET /topings/1
  # GET /topings/1.json
  def show
    @toping = Toping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @toping }
    end
  end

  # GET /topings/new
  # GET /topings/new.json
  def new
    @toping = Toping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @toping }
    end
  end

  # GET /topings/1/edit
  def edit
    @toping = Toping.find(params[:id])
  end

  # POST /topings
  # POST /topings.json
  def create
    @toping = Toping.new(params[:toping])

    respond_to do |format|
      if @toping.save
        format.html { redirect_to @toping, notice: 'Toping was successfully created.' }
        format.json { render json: @toping, status: :created, location: @toping }
      else
        format.html { render action: "new" }
        format.json { render json: @toping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /topings/1
  # PUT /topings/1.json
  def update
    @toping = Toping.find(params[:id])

    respond_to do |format|
      if @toping.update_attributes(params[:toping])
        format.html { redirect_to @toping, notice: 'Toping was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @toping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topings/1
  # DELETE /topings/1.json
  def destroy
    @toping = Toping.find(params[:id])
    @toping.destroy

    respond_to do |format|
      format.html { redirect_to topings_url }
      format.json { head :ok }
    end
  end
end
