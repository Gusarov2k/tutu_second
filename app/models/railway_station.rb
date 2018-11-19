class RailwayStation < ActiveRecord::Base
  validates :title, presence: true

  has_many  :trains
  has_many  :railway_station_routes
  has_many  :routes, through: :railway_station_routes
end
