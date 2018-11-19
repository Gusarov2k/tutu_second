class AddToTrainColmTicet < ActiveRecord::Migration
  def change
    add_belongs_to  :trains, :ticet
  end
end
