class Train < ActiveRecord::Base
  validates :number, presence: :true

  belongs_to    :railway_station

  has_one       :route

  belongs_to    :ticet
end