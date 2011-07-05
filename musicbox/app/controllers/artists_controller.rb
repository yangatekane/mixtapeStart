class ArtistsController < ApplicationController
  before_filter :authenticate_artist!

  def show
	 @artist = Artist.find(params[:id])
	 @microposts = @artist.microposts.paginate(:page => params[:page])
	 @title = @artist.name
  end

  def register
	@title = "Register"	
  end

end
