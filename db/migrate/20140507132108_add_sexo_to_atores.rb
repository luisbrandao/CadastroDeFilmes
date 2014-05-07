class AddSexoToAtores < ActiveRecord::Migration
  def change
    add_column :atores, :sexo, :atores, :default => 1
  end

  def down
    change_table :atores do |t|
      t.remove :sexo
    end
  end
end