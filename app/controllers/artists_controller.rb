class ArtistsController < ApplicationController
<<<<<<< HEAD
=======
	
	before_filter :authenticate_artist!
>>>>>>> eb2b69e19f0aba86f85859414b8a6260d7286162
  #Prepare data to show all artist on our database:
  def index
	  @title = "Featured Artists"
      #	  @artists =Artist.all   ,had to change this since using will_paginate
	  @artists = Artist.paginate(:page=>params[:page])
  end





 def show
<<<<<<< HEAD
	 @artist = Artist.find(params[:id])
=======
 	#if artist_signed_in?
 	#	if id !=current_artist.id
 	#		@artist = Artist.find(params[:id])
 	#		else
 	#			@artist = current_artist
 	#	end
 #	else
 	@artist = Artist.find(params[:id])
 #end
>>>>>>> eb2b69e19f0aba86f85859414b8a6260d7286162
	 @title = @artist.username
	 
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
