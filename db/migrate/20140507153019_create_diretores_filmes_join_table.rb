class CreateDiretoresFilmesJoinTable < ActiveRecord::Migration
  def up
    create_table :diretor_filmes, :id => false do |t|
      t.references :diretor, :filme
    end
  end

  def down
    drop_table :diretor_filmes
  end
end
