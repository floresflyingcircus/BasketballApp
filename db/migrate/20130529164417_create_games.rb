class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :date
      t.time :start_time
      t.string :opponent

      t.timestamps
    end
  end
end
