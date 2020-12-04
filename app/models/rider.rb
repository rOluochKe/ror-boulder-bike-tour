class Rider < ApplicationRecord
  def name
    [first_name, last_name, city_of_origin, state_of_origin].join(' ')
  end

  def coordinates
    [longitude, latitude]
  end

  def to_feature
    {
      "type": "Feature",
      "geometry": {
        "type": "Point",
        "coordinates": coordinates
      },
      "properties": {
        "rider_id": id,
        "name": name,
        "info_window": ApplicationController.new.render_to_string(
          partial: "riders/infowindow",
          locals: { rider: self }
        )
      }
    }
  end
end
