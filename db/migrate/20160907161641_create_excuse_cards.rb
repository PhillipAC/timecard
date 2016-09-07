class CreateExcuseCards < ActiveRecord::Migration
  def change
    create_table :excuse_cards do |t|
      t.timestamp :check_in
      t.timestamp :check_out
      t.integer :excuse_id

      t.timestamps null: false
    end
  end
end
