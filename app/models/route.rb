class Route < ActiveRecord::Base
  validates :name, presence: :true

  has_many  :railway_station_routes
  has_many  :railway_stations, through: :railway_station_routes

  belongs_to   :train
end