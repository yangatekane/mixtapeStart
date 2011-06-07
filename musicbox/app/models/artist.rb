class Artist < ActiveRecord::Base
	attr_accessible :name, :genre, :record_label, :artist_type, :website, :rating, :email, :password


end
