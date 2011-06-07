class ArtistController < ApplicationController
	def index
		@title = "Artists"
	        @artists = Artist.all	
	end
	def show
		@artist = Artist.find(params[:id])
		@title = @artist.name
	end
	def update

	end
end
