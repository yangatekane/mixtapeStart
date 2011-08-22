class ArtistsController < ApplicationController
<<<<<<< HEAD
  #before_filter :authenticate_artist!, :except => [:index, :edit, :update]
=======

>>>>>>> lindagcaba-master
  #Prepare data to show all artist on our database:
  
  def index
	  @title = "Featured Artists"
      #	  @artists =Artist.all   ,had to change this since using will_paginate
	  @artists = Artist.paginate(:page=>params[:page])
  end





 def show
<<<<<<< HEAD
 	if artist_signed_in?	
 				@artist =  current_artist 
 				unless params[:id].blank?
 					@artist =  Artist.find(params[:id])
 				end
 	else
		 @artist = Artist.find(params[:id])
	end
	 @title = @artist.username	 
=======
 	if artist_signed_in?
 		@artist = current_artist
 		unless params[:id].blank?
 			@artist = Artist.find(params[:id])
 		end
 				
 	else
 	@artist = Artist.find(params[:id])
 end
	 @title = @artist.username
	 
>>>>>>> lindagcaba-master
 end

 

  def edit
	  @artist = Artist.find(params[:id])
	  @title = "Edit User"
  end

  def update
	  @artist = Artist.find(params[:id])

	  unless params[:attachable].blank?
	  @photo = @artist.build_photo(params[:attachable])
          @photo.save
	  #what if there was a problem saving the image
          end

	  
	  if @artist.update_attributes(params[:artist])
		  flash[:success] ='Succesfully updated your profile'
		  redirect_to @artist
	  else
		  @title = "Edit User"
		  render 'edit'
	  end
  end

  def delete
  end
 
  def register
  end

end
