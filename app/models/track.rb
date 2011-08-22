class Track < ActiveRecord::Base
<<<<<<< HEAD
=======
	 acts_as_commentable
	
>>>>>>> eb2b69e19f0aba86f85859414b8a6260d7286162
	belongs_to :artist
    attr_accessible :name,:uploaded_data

	has_attachment :content_type =>'audio/mp3', # will accept mp3 mixtapes for now
		       :storage =>:file_system,
		       :max_size => 700.megabytes,
		       :path_prefix =>'public/tracks',
		       :partition => false

	validates_as_attachment


end
