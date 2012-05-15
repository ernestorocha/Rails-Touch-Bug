class TouchersController < ApplicationController
  # GET /touchers
  # GET /touchers.json
  def index
    @touchers = Toucher.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @touchers }
    end
  end

  # GET /touchers/1
  # GET /touchers/1.json
  def show
    @toucher = Toucher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @toucher }
    end
  end

  # GET /touchers/new
  # GET /touchers/new.json
  def new
    @toucher = Toucher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @toucher }
    end
  end

  # GET /touchers/1/edit
  def edit
    @toucher = Toucher.find(params[:id])
  end

  # POST /touchers
  # POST /touchers.json
  def create
    @toucher = Toucher.new(params[:toucher])

    respond_to do |format|
      if @toucher.save
        format.html { redirect_to @toucher, notice: 'Toucher was successfully created.' }
        format.json { render json: @toucher, status: :created, location: @toucher }
      else
        format.html { render action: "new" }
        format.json { render json: @toucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /touchers/1
  # PUT /touchers/1.json
  def update
    @toucher = Toucher.find(params[:id])

    respond_to do |format|
      if @toucher.update_attributes(params[:toucher])
        format.html { redirect_to @toucher, notice: 'Toucher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @toucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /touchers/1
  # DELETE /touchers/1.json
  def destroy
    @toucher = Toucher.find(params[:id])
    @toucher.destroy

    respond_to do |format|
      format.html { redirect_to touchers_url }
      format.json { head :no_content }
    end
  end
end
