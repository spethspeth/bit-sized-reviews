class GamesController < ApplicationController
  def index
    if params[:query].present?
      @games = Game.game_search(params[:query])
    else
      @games = Game.all
    end
  end
end
