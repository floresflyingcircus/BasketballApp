class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :two_made
      t.integer :two_miss
      t.integer :three_made
      t.integer :three_miss
      t.integer :ft_made
      t.integer :ft_miss
      t.integer :off_reb
      t.integer :def_reb
      t.integer :block
      t.integer :assist
      t.integer :steal
      t.integer :turnover
      t.references :player
      t.references :game

      t.timestamps
    end
    add_index :stats, :player_id
    add_index :stats, :game_id
  end
end
