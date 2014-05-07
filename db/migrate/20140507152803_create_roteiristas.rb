class CreateRoteiristas < ActiveRecord::Migration
  def change
    create_table :roteiristas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
