class AritistsController < ApplicationController
  # GET /aritists
  # GET /aritists.json
  def index
    @aritists = Aritist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aritists }
    end
  end

  # GET /aritists/1
  # GET /aritists/1.json
  def show
    @aritist = Aritist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aritist }
    end
  end

  # GET /aritists/new
  # GET /aritists/new.json
  def new
    @aritist = Aritist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aritist }
    end
  end

  # GET /aritists/1/edit
  def edit
    @aritist = Aritist.find(params[:id])
  end

  # POST /aritists
  # POST /aritists.json
  def create
    @aritist = Aritist.new(params[:aritist])

    respond_to do |format|
      if @aritist.save
        format.html { redirect_to @aritist, notice: 'Aritist was successfully created.' }
        format.json { render json: @aritist, status: :created, location: @aritist }
      else
        format.html { render action: "new" }
        format.json { render json: @aritist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aritists/1
  # PUT /aritists/1.json
  def update
    @aritist = Aritist.find(params[:id])

    respond_to do |format|
      if @aritist.update_attributes(params[:aritist])
        format.html { redirect_to @aritist, notice: 'Aritist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aritist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aritists/1
  # DELETE /aritists/1.json
  def destroy
    @aritist = Aritist.find(params[:id])
    @aritist.destroy

    respond_to do |format|
      format.html { redirect_to aritists_url }
      format.json { head :no_content }
    end
  end
end
