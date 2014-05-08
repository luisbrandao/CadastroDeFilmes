class FilmesController < ApplicationController
  # GET /filmes
  # GET /filmes.json
  def index
    @search = Filme.search(params[:q])
    @filmes = @search.result
      .paginate(page: params[:page], per_page: 100)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @filmes }
    end
  end

  # GET /filmes/1
  # GET /filmes/1.json
  def show
    @filme = Filme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @filme }
    end
  end

  # GET /filmes/new
  # GET /filmes/new.json
  def new
    @filme = Filme.new
    @diretor = Diretor.order('nome')
    @ator = Ator.order('nome')

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @filme }
    end
  end

  # GET /filmes/1/edit
  def edit
    @filme = Filme.find(params[:id])
    @diretor = Diretor.order('nome')
    @ator = Ator.order('nome')
  end

  # POST /filmes
  # POST /filmes.json
  def create
    @filme = Filme.new(params[:filme])
    @diretor = Diretor.order('nome')
    @ator = Ator.order('nome')

    respond_to do |format|
      if @filme.save
        format.html { redirect_to @filme, notice: 'Um novo filme foi criado com sucesso.' }
        format.json { render json: @filme, status: :created, location: @filme }
      else
        format.html { render action: "new" }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /filmes/1
  # PUT /filmes/1.json
  def update
    @filme = Filme.find(params[:id])

    respond_to do |format|
      if @filme.update_attributes(params[:filme])
        format.html { redirect_to @filme, notice: 'O filme foi atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filmes/1
  # DELETE /filmes/1.json
  def destroy
    @filme = Filme.find(params[:id])
    @filme.destroy

    respond_to do |format|
      format.html { redirect_to filmes_url }
      format.json { head :no_content }
    end
  end
end
