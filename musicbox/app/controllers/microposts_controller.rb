class MicropostsController < ApplicationController
	before_filter :authenticate_artist!
	
	def new
		@title = "Comment"
		@micropost = Micropost.new
	end

	def create
		@title = "Comment"
		@micropost = current_artist.microposts.create(params[:micropost])

		if @micropost.save
			redirect_to microposts_path, :notice => 'Thank you for your comment!'
		else
			@feed_items = []
			render :new
		end
	end
	
	def show
		
		@feed_items = current_artist.feed.paginate(:page => params[:page])
	end
	def destroy
	end
end
