class RidersController < ApplicationController
  def index
    @riders = Rider.all
  end

  def location; end
end
