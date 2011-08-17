class Track < ActiveRecord::Base
	 acts_as_commentable
	
	belongs_to :artist
    attr_accessible :name,:uploaded_data

	has_attachment :content_type =>'audio/mp3', # will accept mp3 mixtapes for now
		       :storage =>:file_system,
		       :max_size => 700.megabytes,
		       :path_prefix =>'public/tracks',
		       :partition => false

	validates_as_attachment


end
