class User < ApplicationRecord
	belongs_to :game
	has_many :scores
	
	def total_score
		score = self.scores.sum(:value)
	end
end
