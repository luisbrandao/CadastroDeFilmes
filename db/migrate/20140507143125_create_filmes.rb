class CreateFilmes < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.string :titulorg
      t.integer :anoF
      t.integer :diretor_id
      t.integer :roteiro
      t.boolean :cor
      t.integer :genero_id
      t.integer :anoA
      t.date :dataA
      t.integer :midia_id
      t.integer :cotacao
      t.integer :pais_id

      t.timestamps
    end
  end
end
