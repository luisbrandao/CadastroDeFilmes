class MidiasController < ApplicationController
  # GET /midias
  # GET /midias.json
  def index
    @midias = Midia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @midias }
    end
  end

  # GET /midias/1
  # GET /midias/1.json
  def show
    @midia = Midia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @midia }
    end
  end

  # GET /midias/new
  # GET /midias/new.json
  def new
    @midia = Midia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @midia }
    end
  end

  # GET /midias/1/edit
  def edit
    @midia = Midia.find(params[:id])
  end

  # POST /midias
  # POST /midias.json
  def create
    @midia = Midia.new(params[:midia])

    respond_to do |format|
      if @midia.save
        format.html { redirect_to @midia, notice: 'Midia was successfully created.' }
        format.json { render json: @midia, status: :created, location: @midia }
      else
        format.html { render action: "new" }
        format.json { render json: @midia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /midias/1
  # PUT /midias/1.json
  def update
    @midia = Midia.find(params[:id])

    respond_to do |format|
      if @midia.update_attributes(params[:midia])
        format.html { redirect_to @midia, notice: 'Midia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @midia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /midias/1
  # DELETE /midias/1.json
  def destroy
    @midia = Midia.find(params[:id])
    @midia.destroy

    respond_to do |format|
      format.html { redirect_to midias_url }
      format.json { head :no_content }
    end
  end
end
