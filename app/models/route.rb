class Route < ActiveRecord::Base
  # https://medium.com/@oliviazyc/complex-nesting-forms-in-rails-631b369be0de
  # http://rusrails.ru/rails-form-helpers
  # http://railscasts.com/episodes/217-multistep-forms?autoplay=true
  validates :name, presence: :true

  has_many      :railway_station_routes
  has_many      :railway_stations, through: :railway_station_routes

  belongs_to    :train

  has_many      :ticets

  accepts_nested_attributes_for :train, reject_if: lambda {|attributes| attributes[‘number’].blank?}
  
end