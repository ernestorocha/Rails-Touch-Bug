class TouchedsController < ApplicationController
  # GET /toucheds
  # GET /toucheds.json
  def index
    @toucheds = Touched.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @toucheds }
    end
  end

  # GET /toucheds/1
  # GET /toucheds/1.json
  def show
    @touched = Touched.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @touched }
    end
  end

  # GET /toucheds/new
  # GET /toucheds/new.json
  def new
    @touched = Touched.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @touched }
    end
  end

  # GET /toucheds/1/edit
  def edit
    @touched = Touched.find(params[:id])
  end

  # POST /toucheds
  # POST /toucheds.json
  def create
    @touched = Touched.new(params[:touched])

    respond_to do |format|
      if @touched.save
        format.html { redirect_to @touched, notice: 'Touched was successfully created.' }
        format.json { render json: @touched, status: :created, location: @touched }
      else
        format.html { render action: "new" }
        format.json { render json: @touched.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /toucheds/1
  # PUT /toucheds/1.json
  def update
    @touched = Touched.find(params[:id])

    respond_to do |format|
      if @touched.update_attributes(params[:touched])
        format.html { redirect_to @touched, notice: 'Touched was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @touched.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toucheds/1
  # DELETE /toucheds/1.json
  def destroy
    @touched = Touched.find(params[:id])
    @touched.destroy

    respond_to do |format|
      format.html { redirect_to toucheds_url }
      format.json { head :no_content }
    end
  end
end
