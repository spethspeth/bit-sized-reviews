class ReviewsController < ApplicationController
  before_action :set_game

  def new
    @review = Review.new
    @game = set_game
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.game = set_game
    respond_to do |format|
      if @review.save
        format.html { redirect_to game_path(@review.game) }
        format.json
      else
        format.html { render "games/show" }
        format.json
      end
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to game_path(@review.game)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to game_path(@review.game)
  end

  private

  def set_game
    @game = Game.find(params[:game_id]) if params[:game_id]
  end

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
