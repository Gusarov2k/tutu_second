class AddToRouteColumnTrain < ActiveRecord::Migration
  def change
    add_belongs_to :routes, :train
  end
end
