class AddPlaceIdToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :place_id, :integer
  end
end
