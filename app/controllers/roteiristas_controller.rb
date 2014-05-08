class RoteiristasController < ApplicationController
  # GET /roteiristas
  # GET /roteiristas.json
  def index
    @search = Roteirista.search(params[:q])
    @roteiristas = @search.result
      .paginate(page: params[:page], per_page: 100)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roteiristas }
    end
  end

  # GET /roteiristas/1
  # GET /roteiristas/1.json
  def show
    @roteirista = Roteirista.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @roteirista }
    end
  end

  # GET /roteiristas/new
  # GET /roteiristas/new.json
  def new
    @roteirista = Roteirista.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @roteirista }
    end
  end

  # GET /roteiristas/1/edit
  def edit
    @roteirista = Roteirista.find(params[:id])
  end

  # POST /roteiristas
  # POST /roteiristas.json
  def create
    @roteirista = Roteirista.new(params[:roteirista])

    respond_to do |format|
      if @roteirista.save
        format.html { redirect_to @roteirista, notice: 'Um novo roteirista foi criado.' }
        format.json { render json: @roteirista, status: :created, location: @roteirista }
      else
        format.html { render action: "new" }
        format.json { render json: @roteirista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roteiristas/1
  # PUT /roteiristas/1.json
  def update
    @roteirista = Roteirista.find(params[:id])

    respond_to do |format|
      if @roteirista.update_attributes(params[:roteirista])
        format.html { redirect_to @roteirista, notice: 'O roteirista foi atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @roteirista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roteiristas/1
  # DELETE /roteiristas/1.json
  def destroy
    @roteirista = Roteirista.find(params[:id])
    @roteirista.destroy

    respond_to do |format|
      format.html { redirect_to roteiristas_url }
      format.json { head :no_content }
    end
  end
end
