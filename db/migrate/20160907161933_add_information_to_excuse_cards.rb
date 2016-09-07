class AddInformationToExcuseCards < ActiveRecord::Migration
  def change
    add_column :excuse_cards, :excuse, :text
  end
end
