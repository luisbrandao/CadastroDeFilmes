class AtoresController < ApplicationController
  # GET /atores
  # GET /atores.json
  def index
    @atores = Ator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @atores }
    end
  end

  # GET /atores/1
  # GET /atores/1.json
  def show
    @ator = Ator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ator }
    end
  end

  # GET /atores/new
  # GET /atores/new.json
  def new
    @ator = Ator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ator }
    end
  end

  # GET /atores/1/edit
  def edit
    @ator = Ator.find(params[:id])
  end

  # POST /atores
  # POST /atores.json
  def create
    @ator = Ator.new(params[:ator])

    respond_to do |format|
      if @ator.save
        format.html { redirect_to @ator, notice: 'Ator was successfully created.' }
        format.json { render json: @ator, status: :created, location: @ator }
      else
        format.html { render action: "new" }
        format.json { render json: @ator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /atores/1
  # PUT /atores/1.json
  def update
    @ator = Ator.find(params[:id])

    respond_to do |format|
      if @ator.update_attributes(params[:ator])
        format.html { redirect_to @ator, notice: 'Ator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atores/1
  # DELETE /atores/1.json
  def destroy
    @ator = Ator.find(params[:id])
    @ator.destroy

    respond_to do |format|
      format.html { redirect_to atores_url }
      format.json { head :no_content }
    end
  end
end
