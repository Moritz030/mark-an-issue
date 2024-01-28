class Issue < ApplicationRecord
  validates :title, :description, :lat, :lng, presence: true
  validates :lat, :lng, numericality: { only_numeric: true }


  store :location, accessors: %i[lat lng], coder: JSON
end
