class Track < ActiveRecord::Base
	belongs_to :artist
	has_many   :tracks


	has_attachment :content_type =>'audio/mp3', # will accept mp3 mixtapes for now
		       :storage =>:file_system,
		       :max_size => 700.megabytes,
		       :path_prefix =>'public/tracks'

	validates_as_attachment


end
