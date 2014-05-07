class CreateFilmes < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.string :titulorg
      t.date :ano
      t.integer :diretor_id
      t.integer :roteiro
      t.boolean :cor
      t.integer :genero_id
      t.integer :data
      t.integercotacao :midia_id
      t.integer :pais_id

      t.timestamps
    end
  end
end
