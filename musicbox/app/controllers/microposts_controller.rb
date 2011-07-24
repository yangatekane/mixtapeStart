class MicropostsController < ApplicationController
	before_filter :authenticate_artist!
	

	def create
		@title = "Comment"
		@micropost = current_artist.microposts.create(params[:micropost])
	
		
		if @micropost.save
			redirect_to  track_path(current_track.id)
		else
			@feed_items = []
			render :new
		end
	end
	
	def destroy
	end
end


