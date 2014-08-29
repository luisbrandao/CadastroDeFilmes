#encoding: utf-8
class MidiasController < ApplicationController
  before_action :set_midia, only: [:show, :edit, :update, :destroy]
  # GET /midias
  # GET /midias.json
  def index
    @midias = Midia.all
  end

  # GET /midias/1
  # GET /midias/1.json
  def show
    @midia = Midia.find(params[:id])
  end

  # GET /midias/new
  # GET /midias/new.json
  def new
    @midia = Midia.new
  end

  # GET /midias/1/edit
  def edit
    @midia = Midia.find(params[:id])
  end

  # POST /midias
  # POST /midias.json
  def create
    @midia = Midia.new(midia_params)

    respond_to do |format|
      if @midia.save
        format.html { redirect_to @midia, notice: 'Um novo tipo de mídia foi criado com sucesso.' }
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
    respond_to do |format|
      if @midia.update_attributes(midia_params)
        format.html { redirect_to @midia, notice: 'O tipo de mídia foi atualizado com sucesso.' }
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
    @midia.destroy

    respond_to do |format|
      format.html { redirect_to midias_url }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_midia
      @midia = Midia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def midia_params
      params.require(:midia).permit(:nome)
    end
end

