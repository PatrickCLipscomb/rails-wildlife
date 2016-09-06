class Sighting < ActiveRecord::Base
  validates :name, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  belongs_to :animal
  belongs_to :region
end
