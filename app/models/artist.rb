class Artist < ActiveRecord::Base

	attr_accessible :name,:email,:genre,:category,:record_label,:artist_type,:website,:avatar,:avatar_file_name,:avatar_content_type,:avatar_file_size,:avatar_updated_at
	attr_accessor :rating

	
      has_attached_file :avatar,
	      	          :styles=>{:medium=>"300x300>",
	 	                     :thumb=>"100x100>"}	     
					


end
