#encoding: utf-8
class PaisesController < ApplicationController
  before_action :set_pais, only: [:show, :edit, :update, :destroy]
  # GET /paises
  # GET /paises.json
  def index
    @paises = Pais.all
  end

  # GET /paises/1
  # GET /paises/1.json
  def show
    @pais = Pais.find(params[:id])
  end

  # GET /paises/new
  # GET /paises/new.json
  def new
    @pais = Pais.new
  end

  # GET /paises/1/edit
  def edit
    @pais = Pais.find(params[:id])
  end

  # POST /paises
  # POST /paises.json
  def create
    @pais = Pais.new(pais_params)

    respond_to do |format|
      if @pais.save
        format.html { redirect_to @pais, notice: 'Um novo país foi criado com sucesso.' }
        format.json { render json: @pais, status: :created, location: @pais }
      else
        format.html { render action: "new" }
        format.json { render json: @pais.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /paises/1
  # PUT /paises/1.json
  def update
    respond_to do |format|
      if @pais.update_attributes(pais_params)
        format.html { redirect_to @pais, notice: 'O país foi atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pais.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paises/1
  # DELETE /paises/1.json
  def destroy
    @pais.destroy

    respond_to do |format|
      format.html { redirect_to paises_url }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_pais
      @pais = Pais.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pais_params
      params.require(:pais).permit(:nome)
    end
end
