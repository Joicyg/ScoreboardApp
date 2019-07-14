class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :Game_name
      t.integer :No_of_players
      t.string :status
      t.timestamps
    end
  end
end
