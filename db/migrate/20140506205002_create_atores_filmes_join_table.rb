class CreateAtoresFilmesJoinTable < ActiveRecord::Migration
  def up
    create_table :atores_filmes, :id => false do |t|
      t.references :ator, :filme
    end
  end

  def down
    drop_table :atores_filmes
  end
end
