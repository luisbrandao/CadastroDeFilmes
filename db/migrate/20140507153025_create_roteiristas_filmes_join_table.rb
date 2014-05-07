class CreateRoteiristasFilmesJoinTable < ActiveRecord::Migration
  def up
    create_table :roteiristas_filmes, :id => false do |t|
      t.references :roteirista, :filme
    end
  end

  def down
    drop_table :roteiristas_filmes
  end
end
