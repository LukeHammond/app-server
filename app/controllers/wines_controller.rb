class WinesController < ApplicationController
  # GET /wines
  # GET /wines.json
  def index
    @wines = Wine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wines }
    end
  end

  # GET /wines/1
  # GET /wines/1.json
  def show
    @wine = Wine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wine }
    end
  end

  # GET /wines/new
  # GET /wines/new.json
  def new
    @wine = Wine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wine }
    end
  end

  # GET /wines/1/edit
  def edit
    @wine = Wine.find(params[:id])
  end

  # POST /wines
  # POST /wines.json
  def create
    @wine = Wine.new(params[:wine])

    respond_to do |format|
      if @wine.save
        format.html { redirect_to @wine, notice: 'Wine was successfully created.' }
        format.json { render json: @wine, status: :created, location: @wine }
      else
        format.html { render action: "new" }
        format.json { render json: @wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wines/1
  # PUT /wines/1.json
  def update
    @wine = Wine.find(params[:id])

    respond_to do |format|
      if @wine.update_attributes(params[:wine])
        format.html { redirect_to @wine, notice: 'Wine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wines/1
  # DELETE /wines/1.json
  def destroy
    @wine = Wine.find(params[:id])
    @wine.destroy

    respond_to do |format|
      format.html { redirect_to wines_url }
      format.json { head :no_content }
    end
  end
end
