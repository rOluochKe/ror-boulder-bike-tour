class Rider < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def address
    [first_name, last_name, city_of_origin, state_of_origin].compact.join(", ")
  end

  def address_changed?
    first_name_changed? || last_name_changed? || city_of_origin_changed? || state_of_origin_changed?
  end
end
