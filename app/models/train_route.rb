class TrainRoute < ActiveRecord::Base
  belongs_to  :train
  belongs_to  :route
end
