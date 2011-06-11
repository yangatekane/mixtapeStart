class Artist < ActiveRecord::Base
	attr_accessible :name,:email,:genre,:category,:record_label,:artist_type,:website
	attr_accessor :rating
end
