class DiretoresController < ApplicationController
  before_action :set_diretor, only: [:show, :edit, :update, :destroy]
  # GET /diretores
  # GET /diretores.json
  def index
    @search = Diretor.search(params[:q])
    @diretores = @search.result
      .paginate(page: params[:page], per_page: 100)
  end

  # GET /diretores/1
  # GET /diretores/1.json
  def show
    @diretor = Diretor.find(params[:id])
  end

  # GET /diretores/new
  # GET /diretores/new.json
  def new
    @diretor = Diretor.new
  end

  # GET /diretores/1/edit
  def edit
    @diretor = Diretor.find(params[:id])
  end

  # POST /diretores
  # POST /diretores.json
  def create
    @diretor = Diretor.new(diretor_params)

    respond_to do |format|
      if @diretor.save
        format.html { redirect_to @diretor, notice: 'Um novo diretor foi criado com sucesso.' }
        format.json { render json: @diretor, status: :created, location: @diretor }
      else
        format.html { render action: "new" }
        format.json { render json: @diretor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diretores/1
  # PUT /diretores/1.json
  def update
    respond_to do |format|
      if @diretor.update_attributes(diretor_params)
        format.html { redirect_to @diretor, notice: 'O diretor foi atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diretor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diretores/1
  # DELETE /diretores/1.json
  def destroy
    @diretor.destroy

    respond_to do |format|
      format.html { redirect_to diretores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diretor
      @diretor = Diretor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diretor_params
      params.require(:diretor).permit(:nome)
    end
end
