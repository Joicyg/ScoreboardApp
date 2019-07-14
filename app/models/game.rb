class Game < ApplicationRecord
  has_many :users
  has_many :rounds
  accepts_nested_attributes_for :users , :allow_destroy => true
  def winner
	 max_score = self.users.map(&:total_score).max
   self.users.select{|player| player.total_score == max_score}.first
  end
  end

        
 
 