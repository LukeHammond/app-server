class BreadController < ApplicationController
  # GET /bread
  # GET /bread.json
  def index
    @bread = Bread.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bread }
    end
  end

  # GET /bread/1
  # GET /bread/1.json
  def show
    @bread = Bread.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bread }
    end
  end

  # GET /bread/new
  # GET /bread/new.json
  def new
    @bread = Bread.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bread }
    end
  end

  # GET /bread/1/edit
  def edit
    @bread = Bread.find(params[:id])
  end

  # POST /bread
  # POST /bread.json
  def create
    @bread = Bread.new(params[:bread])

    respond_to do |format|
      if @bread.save
        format.html { redirect_to @bread, notice: 'Bread was successfully created.' }
        format.json { render json: @bread, status: :created, location: @bread }
      else
        format.html { render action: "new" }
        format.json { render json: @bread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bread/1
  # PUT /bread/1.json
  def update
    @bread = Bread.find(params[:id])

    respond_to do |format|
      if @bread.update_attributes(params[:bread])
        format.html { redirect_to @bread, notice: 'Bread was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bread/1
  # DELETE /bread/1.json
  def destroy
    @bread = Bread.find(params[:id])
    @bread.destroy

    respond_to do |format|
      format.html { redirect_to bread_url }
      format.json { head :no_content }
    end
  end
end
