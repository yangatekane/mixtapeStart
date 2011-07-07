class ArtistsController < ApplicationController
  #Prepare data to show all artist on our database:
  def index
	  @title = "Featured Artists"
      #	  @artists =Artist.all   ,had to change this since using will_paginate
	  @artists = Artist.paginate(:page=>params[:page])
  end



 def new
	 @artist = Artist.new
	 @title = "Register"
 end

 def show
	 @artist = Artist.find(params[:id])
	 @title = @artist.name
	 #@photo = @artist.photo
 end

  def create
	  @artist = Artist.new(params[:artist])
	  if @artist.save
		  flash[:success]="Welcome to Music Box"
		  redirect_to @artist
	  else
		  @title="Register"
		  render 'new'
	  end
  end

  def edit
	  @artist = Artist.find(params[:id])
	  @title = "Edit User"
          


  end

  def update
	  @artist = Artist.find(params[:id])
	  @photo = @artist.build_photo(params[:attachable])


	  
	  if @artist.update_attribute(:name,params[:name]) && @photo.save
		  redirect_to @artist
	  else
		  @title = "Edit User"
		  render 'edit'
	  end
  end

  def delete
  end
 


end
