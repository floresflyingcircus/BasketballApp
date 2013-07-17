class AddFoulsToStats < ActiveRecord::Migration
  def change
    add_column :stats, :fouls, :integer
  end
end
