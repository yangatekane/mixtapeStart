class ArtistController < ApplicationController
	def index
		@title = "Artists"
	        @artists = Artist.all	
	end

	def show
		@artist = Artist.find(params[:id])
		@title = @artist.name
	end

	def new
		@artist =Artist.new
		@title = "Register"
	end
	
	def create
		@artist = Artist.new(params[:artist])
		if @artist.save
			flash[:success] = "Welcome to Music Box"
			redirect_to @artist
		else
			@title = "Register"
			render 'new'
		end
	end
	def update

	end
end
