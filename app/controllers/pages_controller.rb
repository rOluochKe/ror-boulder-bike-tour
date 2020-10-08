class PagesController < ApplicationController
  def home; end

  def galllery; end

  def location
    @riders = Rider.all
  end

  def contest; end
end
