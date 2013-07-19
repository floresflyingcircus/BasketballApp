class AddGameRefToStats < ActiveRecord::Migration
  def change
    add_column :stats, :game, :references
  end
end
