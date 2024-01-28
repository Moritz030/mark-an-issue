class Issue < ApplicationRecord
  validates :title, :description, :lat, :lng, presence: true

  store :location, accessors: %i[lat lng], coder: JSON
end
