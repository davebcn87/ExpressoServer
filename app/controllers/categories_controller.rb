class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.json
  def index
    @categories = Categoria.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @categoria = Categoria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @categoria }
    end
  end

  # GET /categories/new
  # GET /categories/new.json
  def new
    @categoria = Categoria.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @categoria }
    end
  end

  # GET /categories/1/edit
  def edit
    @categoria = Categoria.find(params[:id])
  end

  # POST /categories
  # POST /categories.json
  def create
    @categoria = Categoria.new(params[:categoria])

    respond_to do |format|
      if @categoria.save
        format.html { redirect_to @categoria, notice: 'Categoria was successfully created.' }
        format.json { render json: @categoria, status: :created, location: @categoria }
      else
        format.html { render action: "new" }
        format.json { render json: @categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.json
  def update
    @categoria = Categoria.find(params[:id])

    respond_to do |format|
      if @categoria.update_attributes(params[:categoria])
        format.html { redirect_to @categoria, notice: 'Categoria was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @categoria = Categoria.find(params[:id])
    @categoria.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :ok }
    end
  end
end
