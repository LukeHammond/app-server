class CheesesController < ApplicationController
  # GET /cheeses
  # GET /cheeses.json
  def index
    @cheeses = Cheese.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cheeses }
    end
  end

  # GET /cheeses/1
  # GET /cheeses/1.json
  def show
    @cheese = Cheese.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cheese }
    end
  end

  # GET /cheeses/new
  # GET /cheeses/new.json
  def new
    @cheese = Cheese.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cheese }
    end
  end

  # GET /cheeses/1/edit
  def edit
    @cheese = Cheese.find(params[:id])
  end

  # POST /cheeses
  # POST /cheeses.json
  def create
    @cheese = Cheese.new(params[:cheese])

    respond_to do |format|
      if @cheese.save
        format.html { redirect_to @cheese, notice: 'Cheese was successfully created.' }
        format.json { render json: @cheese, status: :created, location: @cheese }
      else
        format.html { render action: "new" }
        format.json { render json: @cheese.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cheeses/1
  # PUT /cheeses/1.json
  def update
    @cheese = Cheese.find(params[:id])

    respond_to do |format|
      if @cheese.update_attributes(params[:cheese])
        format.html { redirect_to @cheese, notice: 'Cheese was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cheese.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cheeses/1
  # DELETE /cheeses/1.json
  def destroy
    @cheese = Cheese.find(params[:id])
    @cheese.destroy

    respond_to do |format|
      format.html { redirect_to cheeses_url }
      format.json { head :no_content }
    end
  end
end
