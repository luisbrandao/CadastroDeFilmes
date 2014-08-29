#encoding: utf-8
class GenerosController < ApplicationController
  before_action :set_genero, only: [:show, :edit, :update, :destroy]
  # GET /generos
  # GET /generos.json
  def index
    @generos = Genero.all
  end

  # GET /generos/1
  # GET /generos/1.json
  def show
    @genero = Genero.find(params[:id])
  end

  # GET /generos/new
  # GET /generos/new.json
  def new
    @genero = Genero.new
  end

  # GET /generos/1/edit
  def edit
    @genero = Genero.find(params[:id])
  end

  # POST /generos
  # POST /generos.json
  def create
    @genero = Genero.new(genero_params)

    respond_to do |format|
      if @genero.save
        format.html { redirect_to @genero, notice: 'Um novo gênero foi criado com sucesso.' }
        format.json { render json: @genero, status: :created, location: @genero }
      else
        format.html { render action: "new" }
        format.json { render json: @genero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /generos/1
  # PUT /generos/1.json
  def update
    respond_to do |format|
      if @genero.update_attributes(genero_params)
        format.html { redirect_to @genero, notice: 'O gênero foi atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @genero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generos/1
  # DELETE /generos/1.json
  def destroy
    @genero.destroy

    respond_to do |format|
      format.html { redirect_to generos_url }
      format.json { head :no_content }
    end
  end
  private

    # Use callbacks to share common setup or constraints between actions.
    def set_genero
      @genero = Genero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genero_params
      params.require(:genero).permit(:nome)
    end
end
