class GamesController < ApplicationController
  def index
    if params[:query].present?
      @games = Game.game_search(params[:query])
    else
      @games = Game.all
    end
  end

  def show
    @game = Game.find(params[:id])
    @reviews = Review.all
    @review = Review.new
  end
end
