require 'geocoder'

class Place < ActiveRecord::Base
	validates_uniqueness_of :name
	geocoded_by :geocoded_name
	after_validation :geocode


end
