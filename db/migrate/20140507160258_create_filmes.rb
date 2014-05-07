class CreateFilmes < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.string :titulorg
      t.integer :anoF
      t.boolean :cor
      t.integer :genero_id
      t.date :dataA
      t.integer :anoA
      t.integer :midia_id
      t.integer :cotacao
      t.integer :pais_id

      t.timestamps
    end
  end
end
