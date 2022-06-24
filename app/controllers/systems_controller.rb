class SystemsController < ApplicationController
  def index
    @systems = System.all
  end
end
