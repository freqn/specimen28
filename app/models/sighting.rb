class Sighting < ActiveRecord::Base
  belongs_to :species
  # validates :latitude, :longitude, :date, presence: true
end