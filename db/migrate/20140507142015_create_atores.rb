class CreateAtores < ActiveRecord::Migration
  def change
    create_table :atores do |t|
      t.string :nome
      t.integer :sexo, :default => 1

      t.timestamps
    end
  end
end
