class CreateDiretores < ActiveRecord::Migration
  def change
    create_table :diretores do |t|
      t.string :nome

      t.timestamps
    end
  end
end
