class RoundsController < ApplicationController
	def new
        @round = Round.new
    end

    def create
        @game = Game.find(params[:game_id])
        @round = @game.rounds.create
        params[:score].each do |user_id, value|
        	@round.scores.create(user_id: user_id, value: value)
        end
    end
end
