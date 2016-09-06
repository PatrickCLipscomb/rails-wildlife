class CreateRegion < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.column :name, :string
      t.column :sighting_id, :integer
      t.timestamps
    end
  end
end
