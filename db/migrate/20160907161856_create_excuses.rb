class CreateExcuses < ActiveRecord::Migration
  def change
    create_table :excuses do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
