module ApplicationHelper
	def title
         base_title="MusicBox"

	 if @title.nil?
		 base_title
	 else
		 "#{base_title}|#{@title}"
	 end
      end

   def picture(person)
   image_url ="/public/photos/0000/0001/noimage.png"
   if person.photo.nil?
	   return image_url
   end
     return person.photo.public_filename()

   end

   def resize(image_path)
  
	 require 'rubygems'
	 require 'RMagick'
	 include Magick

	 original_img =ImageList.new(image_path)

	 new_image=original_img.crop(23,81,107,139)
	  return new_image
   end

end
