class AddIds < ActiveRecord::Migration[5.2]
  def change
  	add_reference :games, :user, index: true
  	add_reference :users, :score, index: true
  	add_reference :rounds, :game, index: true
  	add_reference :scores, :round, index: true
  	add_reference :scores, :user, index: true

  end
end
