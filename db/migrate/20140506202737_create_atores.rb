class CreateAtores < ActiveRecord::Migration
  def change
    create_table :atores do |t|
      t.string :nome

      t.timestamps
    end
  end
end
