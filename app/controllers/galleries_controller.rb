class GalleriesController < ApplicationController
  def index
    @riders = Rider.all
  end
end
