class Photo < ActiveRecord::Base

belongs_to :artist
has_attachment :content_type => :image,
	       :storage	=> :file_system,
	       :max_size =>500.kilobyte,
	       :resize_to =>'320x320>',
	       :thumbnails => {
	 		:large =>'96x96>',
			:medium =>'64x64>',
			:small => '48x48>'
			},
		:processor =>"Rmagick"
validates_as_attachment

end
