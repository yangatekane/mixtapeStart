class ArtistsController < ApplicationController
  before_filter :authenticate_artist!
  #Prepare data to show all artist on our database:
  def index
	  @title = "Featured Artists"
      #	  @artists =Artist.all   ,had to change this since using will_paginate
	  @artists = Artist.paginate(:page=>params[:page])
  end

 def show
 	 current_member = Artist.find(params[:id])
	 if (current_member.id == 0)
 		@artist = current_artist
 	 else
 	 	@artist = current_member
 	 end
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
 

end
