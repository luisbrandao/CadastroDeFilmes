class CreateDiretoresFilmesJoinTable < ActiveRecord::Migration
  def up
    create_table :diretores_filmes, :id => false do |t|
      t.references :diretor, :filme
    end
  end

  def down
    drop_table :diretores_filmes
  end
end
