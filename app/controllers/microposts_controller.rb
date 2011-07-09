class MicropostsController < ApplicationController
	before_filter :authenticate_artist!
	
	def new
		@title = "Comment"
		#@micropost = current_artist.microposts.create()
		#@feed_items = current_artist.feed.paginate(:page => params[:page])
		@micropost = Micropost.new
	end

	def create
		@title = "Comment"
		@micropost = current_artist.microposts.create(params[:micropost])

		if @micropost.save
			redirect_to microposts_path, :notice => 'Thank you for your comment!'
			#flash[:success] = "Comment created!"
			#redirect_to root_path
		else
			#@feed_items = []
			render :new
		end
	end
	
	def show
		@artist = Artist.find(params[:id])
	 	@microposts = @artist.microposts.paginate(:page => params[:page])
	 	@title = @artist.name
		#@micropost = Micropost.find(params[:id])
	end
	def destroy
	end
end