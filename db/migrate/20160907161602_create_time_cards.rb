class CreateTimeCards < ActiveRecord::Migration
  def change
    create_table :time_cards do |t|
      t.timestamp :check_in
      t.timestamp :check_out
      t.time :limit

      t.timestamps null: false
    end
  end
end
