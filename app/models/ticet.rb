class Ticet < ActiveRecord::Base
  belongs_to    :train
  belongs_to    :route
  belongs_to    :user

  has_many      :trains
end