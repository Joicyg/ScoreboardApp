class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to @game
  end

    def new
      @game = Game.new
    end

    def show
      @game = Game.find(params[:id])
      @round = Round.new
      @scores = Score.all
      @winner = @game.winner
    end

    private

    def game_params
      params.require(:game).permit(:Game_name, :No_of_players, :status, users_attributes: [:name,:_destroy])
    end
end
