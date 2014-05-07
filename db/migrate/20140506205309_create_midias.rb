class CreateMidias < ActiveRecord::Migration
  def change
    create_table :midias do |t|
      t.string :nome

      t.timestamps
    end
  end
end
