class SystemsController < ApplicationController
  before_action :find_system, only: [:show]

  def index
    @systems = System.all
  end

  def show
    @games = Game.where(system_id: @system.id)
  end

  private

  def find_system
    @system = System.find(params[:id])
  end

  def system_params
    params.require(:system).permit(:name, :year, :company)
  end
end
