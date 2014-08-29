class AtoresController < ApplicationController
  before_action :set_ator, only: [:show, :edit, :update, :destroy]
  # GET /atores
  # GET /atores.json
  def index
    @search = Ator.search(params[:q])
    @atores = @search.result
      .paginate(page: params[:page], per_page: 100)
  end

  # GET /atores/1
  # GET /atores/1.json
  def show
    @ator = Ator.find(params[:id])
  end

  # GET /atores/new
  # GET /atores/new.json
  def new
    @ator = Ator.new
  end

  # GET /atores/1/edit
  def edit
    @ator = Ator.find(params[:id])
  end

  # POST /atores
  # POST /atores.json
  def create
    @ator = Ator.new(ator_params)

    respond_to do |format|
      if @ator.save
        format.html { redirect_to @ator, notice: 'Um novo ator foi criado com sucesso.' }
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
    respond_to do |format|
      if @ator.update_attributes(ator_params)
        format.html { redirect_to @ator, notice: 'O ator foi atualizado com sucesso.' }
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
    @ator.destroy

    respond_to do |format|
      format.html { redirect_to atores_url }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_ator
      @ator = Ator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ator_params
      params.require(:ator).permit(:nome, :sexo)
    end
end
