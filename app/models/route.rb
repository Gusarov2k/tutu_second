class Route < ActiveRecord::Base
  validates :name, presence: :true

  has_many      :railway_station_routes
  has_many      :railway_stations, through: :railway_station_routes

  belongs_to    :train

  has_many      :ticets

  accepts_nested_attributes_for :train
  
  before_create :set_name
  private

  def set_name
    self.name = "#{railway_stations.first.title} - #{railway_stations.first.title}"
  end
end