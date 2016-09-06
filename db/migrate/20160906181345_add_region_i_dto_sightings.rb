class AddRegionIDtoSightings < ActiveRecord::Migration[5.0]
  def change
    add_column :sightings, :region_id, :integer
  end
end
