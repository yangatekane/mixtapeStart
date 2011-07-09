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
   image_url ='/photos/noimage.png'
   if person.photo.nil?
	   return image_url
   end
     return person.photo.public_filename()

   end

end
