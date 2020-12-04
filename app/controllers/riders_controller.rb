class RidersController < ApplicationController
  def index
    @riders = Rider.all.where.not(latitude: nil, longitude: nil)
    @geojson = build_geojson
  end

  private

  def build_geojson
    {
      type: 'FeatureCollection',
      features: @riders.map(&:to_feature)
    }
  end
end
