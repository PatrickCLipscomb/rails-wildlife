class RemoveSightingIDfromRegion < ActiveRecord::Migration[5.0]
  def change
    remove_column :regions, :sighting_id
  end
end
