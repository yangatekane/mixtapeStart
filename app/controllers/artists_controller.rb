class ArtistsController < ApplicationController
  #Prepare data to show all artist on our database:
  def index
	  @title = "Featured Artists"
      #	  @artists =Artist.all   ,had to change this since using will_paginate
	  @artists = Artist.paginate(:page=>params[:page])
  end





 def show
	 @artist = Artist.find(params[:id])
	 @title = @artist.username
	 #@photo = @artist.photo
 end

 

  def edit
	  @artist = Artist.find(params[:id])
	  @title = "Edit User"
          


  end

  def update
	  @artist = Artist.find(params[:id])
	  @photo = @artist.build_photo(params[:attachable])


	  
	  if @artist.update_attribute(:username,params[:username]) && @photo.save
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
